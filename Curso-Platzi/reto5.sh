#!/bin/bash
#Programa que lee 2 variables y las imprime
#Autor: @iromero

opcion=0
nombre=""
eliminar=""
host=""
usuario=""
date=$(date +'%Y-%m-%d')
#Aqui lo que voy hacer es que el usario entre el nombre del fichero que quiere crear,si existe se lo informo que ya esta y solo puede eliminarlo, si no lo  creo con la hora completa, luego le doy la opcion de que lo elimine y la ultima opcion es salir de programa

while :
do
echo "-----------------------------------"
echo "               Reto 5              "
echo "-----------------------------------"

echo "1- Crear un fichero con el sgte formato file_yymmdd"
echo "2- Ingrese el nombre del fichero que quiere eliminar"
echo "3- Comprimir y enviar a otro servidor"
echo "4- Salir"
echo -e "\n"

read -n1 -p "Ingrese una opción [1-4]:" opcion

    #Validar que no exista el fichero con el nombre digitado
    case $opcion in
        1)
            echo -e "\n"
            read -p  "Ingrese el nombre del fichero: " nombre

             #Aqui valido que no exista el fichero
            if [ -e $nombre ]; then
                echo "El fichero existe, solo puede borrarlo."
                sleep 3
            else
                touch "$nombre"_"$date".log
                echo "Fichero creado correctamente"
                ls -la "$nombre"_"$date".log
                sleep 3
            fi
            ;;
        2)
            echo -e "\n"
            read -p  "Nombre del fichero a eliminar: " eliminar
            
            if [ -e $eliminar ]; then
                rm $eliminar
                echo "Fichero eliminado correctamente."
                sleep 3
            else
                echo "Este nombre no es correcto: "$eliminar""
                sleep 3
              fi
            ;;
        3)
            echo -e "\n"
            read -p "Ingrese el host: " host
            read -p "Ingrese el usuario: " usuario
            #rsync -avz $(pwd) $usuario@$host:/home/israel/prueba
            zip -e "$nombre"_"$date".log.zip "$nombre"_"$date".log
            rsync -avz "$nombre"_"$date".log.zip $usuario@$host:/home/israel/prueba
            ;;

        4)
            echo -e "\n\nSalir"
            clear
            exit 0
            ;;
    esac
done
