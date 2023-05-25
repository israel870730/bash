#!/bin/bash
# Programa para Menu para manejarlas utilidades de postgre usando funciones

opcion=0
#Fucion para instalar postgres
instalar_postgres () {
    echo -e "\n Verificar la instalacion de Postgres..."
    #Aqui verificamos si esta instalado postgres
    verificarInstall=$(which psql)
    #El caracter $? es el que chequea si la variable tiene 1 ó 0 
    if [ $? -eq 0 ]; then 
        echo -e "\n Postgres ya se encuentra instalado en el servidor"
    else
        echo -e "\n"
        read -s -p "Ingresar contraseña de sudo: " password
        echo -e "\n"
        read -s -p "Ingresar contraseña a utilizar en postgres: " passwordPostgres
        echo "$password" | sudo -S apt update
        echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$PASSWORDpOSTGRES}';"
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
    fi
    read -n 1 -s -r -p "Presione [ENTER] para continuar..."
}

#Fucion para desinstalar postgres
desinstalar_postgres () {
    read -s -p "Ingresar contraseña de sudo: " password
    echo -n "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgresql
    echo "$password" | sudo -S groupdel postgresql
    read -n 1 -s -r -p "Presione [ENTER] para continuar..."
}

#Fucion para sacar respaldo postgres
sacar_respaldo () {
    echo "Sacar respaldo..."
    echo "Directorio de Backup: $directorioBackup"
}

#Fucion para restaurar respaldo
restaurar_respaldo () {
    echo "Restaurar respaldo..."
    echo "Directorio de Respaldos: $directorioRespaldos"
}

while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menú de opciones
    echo "-----------------------------------------"
    echo "PGUTIL - Programa de Utilidad de Postgres"
    echo "-----------------------------------------"
    echo "              MENÚ PRINCIPAL             "
    echo "-----------------------------------------"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restar respaldo"
    echo "5. Salir"

    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción [1-5]:" opcion

    #Validar la opción ingresada
    case $opcion in
        1)
            #echo -e "\n\nInstalar postgres....."
            echo -e "\n"
            instalar_postgres
            sleep 3
            ;;

        2)
            #echo -e "\n\nDesinstalar postgres...."
            echo -e "\n"
            desinstalar_postgres
            sleep 3
            ;;

        3)
            #echo -e "\n\nSacar respaldo..."
            echo -e "\n"
            read -p "Directorio Backup: " directorioBackup
            sacar_respaldo
            sleep 3
            ;;

        4)
            #echo -e "\n\nRestaurar respaldo..."
            echo -e "\n"
            read -p "Directorio de Respaldos: " directorioRespaldos
            restaurar_respaldo $directorioRespaldos
            sleep 3
            ;;

        5)
            echo -e "\n\nSalir del Programa"
            clear
            exit 0
            ;;
    esac
done
