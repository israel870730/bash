# !/bin/bash
# Menu por consola
# favillon

opcion=0
opciones=("1.ProcesosActuales""2.MemoriaDisponible""3.EspacioDisco""4.InformaciónRed""5.VariablesEntornoConfiguradas""6.InformaciónPrograma""7.BackupInformación""8.Salir")

while :
do
    clear 
    echo"----------------------------------"
    echo"          MENÚ PRINCIPAL          "
    echo"----------------------------------"
    for opc in ${opciones[@]}
        do
            echo$opc
        done

    read -n1 -p "Ingrese la opción deseada [1-8]: " opcion

    case $opcion in
        1)
            echo-e"\n${opciones[0]}"
	    ps -u
            sleep 3;
            ;;
        2)
            echo-e"\n${opciones[1]}"
	    free -m
            sleep 3;
            ;;
        3)
            echo-e"\n${opciones[2]}"
	    df -h 
	    sleep 3;
            ;;
        4)
            echo-e"\n${opciones[3]}"
            netstat -r 
	    sleep 3;
            ;;
        5)
            echo-e"\n${opciones[4]}"
            echo$PATH
  	    sleep 3;
            ;;
        6)
            echo-e"\n${opciones[5]}"
            dpkg -l 
	    sleep 3;
            ;;
        7)
            echo-e"\n${opciones[6]}"
	    tar -czvf backup_$(date +"%d-%m-%Y_%H-%M").tar.gz $PWD
              sleep 7 &
	      PID=$!
	      i=1
	      sp="/-\|"
	      echo -n ' '
	      while [ -d /proc/$PID ]
		do
		    printf"\b${sp:i++%${#sp}:1}"
		done
            sleep 3;
            ;;
        8)
            echo-e"\n${opciones[7]}"
	    clear
	    exit
            ;;
    esac
done
