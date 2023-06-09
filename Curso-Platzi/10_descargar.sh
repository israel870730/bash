11_ifelseIfElse.sh                                                                                  0000775 0001750 0001750 00000000541 13767020416 013605  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Programa para trabajar con las sentencias if, else if y else

edad=0

echo "Ejemplo Sentencia If - else"
read -p "Indique cual es su edad: " edad
if [ $edad -le 18 ]; then
    echo "La persona es un adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La personana es adulta"
else
    echo "La persona es adulto mayor"
fi
                                                                                                                                                               11_ifelse.sh                                                                                        0000775 0001750 0001750 00000000676 13767017331 012530  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Programa para trabajar con las sentencias if y else

nota=0
edad=0

echo "Ejemplo de sentencia If-Else"
read -n1 -p "Indique cual es su nota (1-9): " nota
echo ""
if (( $nota >=7 )); then
    echo "El alumno aprueba la materia"
else
   echo "El alumno no aprueba la materia"
fi

echo ""
read -p "Indique cual es su edad: " edad
if [ $edad -le 18 ]; then
    echo "La persona no puede votar"
else
    echo "La persona puede votar"
fi
                                                                  12_ifAnidados.sh                                                                                    0000775 0001750 0001750 00000000760 13767271125 013320  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Programa para trabajar con IF anidados

nota=0
continua=""

echo "Ejemplo de sentencia If-Else"
read -n1 -p "Indique cual es su nota (1-9): " nota
echo ""
if [ $nota -ge 7 ]; then
    echo "El alumno aprueba la materia"
    read -p "Va a continuar estudiando en el sgte nivel (s/n): " continua
    if [ $continua == s ]; then
        echo "Bienvenido al sgte nivel"
    else
        echo "Gracias por todo, mucha suerte !!!"
    fi
else
   echo "El alumno no aprueba la materia"
fi

                13_expresionesCondicionales.sh                                                                      0000775 0001750 0001750 00000001726 13767273760 016331  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Programa para trabajar con expresiones condicionales

edad=0
pais=""
patharchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su pais: " pais
read -p "Ingrese el path de su archivo: " patharchivo


echo -e "\nExpresiones condicionales con numeros"
if [ $edad -lt 10 ]; then
    echo "La persona es un niÑo o niña"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona se trata de un adolecente"
else 
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones condicionales con letras"
if [ $pais = "EEUU" ]; then 
    echo "La persona es Americana"
elif [ $pais = "Cuba" ] || [ $pais = "Uruguay" ]; then
    echo "La persona es del Sur de America"
else
    echo "Se desconoce la nacionalidad"
fi


echo -e "\nExpresiones condicionales con archivos"
#Para saber si un directorio existe comprueba con -d
if [ -d $patharchivo ]; then
    echo "El directorio $patharchivo existe"
else
    echo "El directorio $pathdirectorio no existe"
fi
                                          14_CaseColores.sh                                                                                   0000775 0001750 0001750 00000000447 13767276652 013477  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Programa para trabajar con la sentencia case

color=""

echo -e "Ejemplo sentencia case con Colores"
read -p "ingrese el color de su preferecnia: " color
echo -e "\n"

case $color in
    "rojo") echo -e "\nrojo";;
    "azul") echo "azul";;
    *) echo -e "Color desconocido";;
esac
                                                                                                                                                                                                                         14_Case.sh                                                                                          0000775 0001750 0001750 00000000563 13767276707 012150  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Programa para trabajar con la sentencia case

opcion=""

echo -e "Ejemplo sentencia case"
read -p "ngrese una opcion de la A-Z: " opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\nOperacion guardar archivo";;
    "B") echo "Operacion eliminar archivo";;
    [C-E]) echo "No esta implementada esa operacion";;
    *) echo -e "Opcion incorrecta";;
esac
                                                                                                                                             15_arreglos.sh                                                                                      0000775 0001750 0001750 00000001723 13767314250 013075  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el uso de arreglos

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Israel, Karla, Qki, Aida)
arregloRangos=({A..Z} {1..10})

#Imprimir todos los valores
echo "Arreglo de Numeros: ${arregloNumeros[*]}"
echo "Arreglo de Cadenas: ${arregloCadenas[*]}"
echo "Arreglo de Numeros: ${arregloRangos[*]}"

#Imprimir los tamaños de los arreglos
echo "Tamaño Arreglo de Numeros: ${#arregloNumeros[*]}"
echo "Tamaño Arreglo de Cadenas: ${#arregloCadenas[*]}"
echo "Tamaño Arreglo de Numeros: ${#arregloRangos[*]}"

#Imprimir la posicion 3 del arreglo de numeros, cadena y rango
echo "Posicion 3 Arreglo de Numeros: ${arregloNumeros[3]}"
echo "Posicion 3 Arreglo de Cadenas: ${arregloCadenas[3]}"
echo "Posicion 3 Arreglo de Numeros: ${arregloRangos[3]}"

#Agregar y eliminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de numeros: ${arregloNumeros[*]}"
echo "Tamaño Arreglo de numeros: ${#arregloNumeros[*]}"

                                             16_arreglosFor1.sh                                                                                  0000775 0001750 0001750 00000002323 13767713572 013635  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 # ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración for
# Autor: Marco Toscano Freire - @martosfre

function iterarListaNumeros   {
  arregloNumeros=(1 2 3 4 5 6)
  echo "Iterar en la Lista de Números"
  for num in ${arregloNumeros[*]}
  do
      echo "Número: $num"
  done
}

function iterarCadena {

  echo "Iterar en la lista de Cadenas"
  for nom in "Marco" "Pedro" "Luis" "Daniela"
  do
    echo "Nombre : $nom"
  done
}

function iterarArchivos {
  echo "Iterar en Archivos"
  for fil in *
  do
      echo "Nombre archivo: $fil"
  done
}

function iterarComando {
  echo "Iterar utilizando un comando"
  for fil in $(ls)
  do
      echo "Nombre archivo: $fil"
  done
}

function iteracionTradicional {
  echo "Iterar utilizando el formato tradcional"

  for ((i=1; i<10; i++))
  do
      echo "Número: $i"
  done
}

option=0

echo -e "\n elija una opcion
  1 iterar lista de numeros 
  2 iterar lista de cadenas
  3 iterar en Archivos
  4 iterar utilizando comando
  5 iteracion tradicional"

read -n1 option
echo -e "\n"

case $option in
  1) iterarListaNumeros ;;
  2) iterarCadena ;;
  3) iterarArchivos ;;
  4) iterarComando ;;
  5) iteracionTradicional;;
  *) echo "opcion desconocida";;
esac
                                                                                                                                                                                                                                                                                                             16_arreglosFor2.sh                                                                                  0000775 0001750 0001750 00000000721 13767724152 013632  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 # ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración for
# Autor: Israel Romero - @israel870730

zipFiles=( "folder1" "folder2" "folder3" "folder4" "folder5" "folder6" "folder7" "folder8" )

echo "Comprimir ficheros en un ciclo"
echo ""

for ((i=0; i< ${#zipFiles[*]}; i++))
do
if [ -d ${zipFiles[i]} ]; then
zip -r "${zipFiles[i]}.zip" "${zipFiles[i]}"
else
  mkdir ${zipFiles[i]}
  zip -r "${zipFiles[i]}.zip" "${zipFiles[i]}"
fi
done

                                               16_arreglosFor.sh                                                                                   0000775 0001750 0001750 00000001164 13767713374 013556  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el uso de la sentencia de interracion FOR

arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la lista de numero:"
for num in ${arregloNumeros[*]}
do
    echo "Numero: $num"
done

echo "Iterar en la lista de cadenas"
for nom in "Israel" "Karla" "Aida" "Qki"
do
    echo "Nombres: $nom"
done

echo "Iterar en archivos"
for fill in /*
do
    echo "Nombre Archivos:$fill"
done

echo ""
echo "Iterar utilizando un comando"
for fill in $(ls /)
do
    echo "Salida de comando: $fill"
done

echo ""
echo "Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
    echo "Numero:$i"
done
                                                                                                                                                                                                                                                                                                                                                                                                            17_while.sh                                                                                         0000775 0001750 0001750 00000000244 13770012303 012352  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el uso de la sentencia While

num=1

while [ $num -ne 10 ]
do
    echo "Impriendo: $num veces"
    num=$(( num + 1 ))
done
                                                                                                                                                                                                                                                                                                                                                            18_loopaninados1.sh                                                                                 0000775 0001750 0001750 00000000412 13770015262 014016  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
# Programa para mostrar todas las lineas de codigo de los ficheros .sh de este directorio

echo "Loop Aninados"

for file in $(ls *.sh)
do
	echo "--------------- $file ---------------------"
	while read -r linea; do
		echo "$linea"
	done < "$file"
done

                                                                                                                                                                                                                                                      18_loopaninados.sh                                                                                  0000775 0001750 0001750 00000000320 13770014431 013730  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el uso de los Loop Aninados

echo "Loop Aninados"

for fil in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre del archivo: $fil _ $nombre"
    done
done
                                                                                                                                                                                                                                                                                                                19_breakContinue.sh                                                                                 0000775 0001750 0001750 00000000563 13770016507 014053  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el uso de Break  Continue

echo "Sentencia de Break  y Continue"

for fil in $(ls)
do
    for nombre in {1..4}
    do
        if [ $fil = "10_descargar.sh" ]; then
            break;
        elif [[ $fil == 4* ]]; then
            continue;
         else
        echo "Nombre del archivo: $fil _ $nombre"
        fi
    done
done
                                                                                                                                             1.sh                                                                                                0000777 0001750 0001750 00000000147 13764561165 011121  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Programa para realizar operaciones en PostgreSql

echo "Hola Bienvenido al curso de Bash"
                                                                                                                                                                                                                                                                                                                                                                                                                         20_menu.sh                                                                                          0000775 0001750 0001750 00000002267 13770263562 012226  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
# Programa para Menu

opcion=0

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
            echo -e "\n\nInstalar postgres....."
            sleep 3
            ;;

        2)
            echo -e "\n\nDesinstalar postgres...."
            sleep 3
            ;;

        3)
            echo -e "\n\nSacar respaldo..."
            sleep 3
            ;;

        4)
            echo -e "\n\nRestaurar respaldo..."
            sleep 3
            ;;

        5)
            echo -e "\n\nSalir del Programa"
            clear
            exit 0
            ;;
    esac
done
                                                                                                                                                                                                                                                                                                                                         21_directorioFicheros.sh                                                                            0000775 0001750 0001750 00000001344 13770275447 015111  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar la creacion de archivos y capetas
#Creado por: @israel870730

#Para ejecutarlo:
#   ./21_directorioFicheros.sh f file
#   ./21_directorioFicheros.sh d directorio



echo "Archivos - Directorios"
if [ $1 = "d" ]; then 
    
    #Aqui valido que no exista el directorio
    if [ -d $2 ]; then 
        echo "El directorio existe"
    else
        mkdir -m 755 $2
        echo "Directoio creado correctamente"
        ls -la $2
    fi

elif [ $1 == "f" ]; then 

    #Aqui valido que no exista el fichero
    if [ -e $2 ]; then
        echo "El fichero existe"
    else
        touch $2
        echo "Archivo creado correctamente"
        ls -la $2
    fi

else
    echo "No existe esa opcion: $1"
fi

                                                                                                                                                                                                                                                                                            22_escribirFichero.sh                                                                               0000775 0001750 0001750 00000000477 13770410164 014357  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar como escribir en un archivo
#Creado por: @israel870730

#Para ejecutarlo:
#   ./21_directorioFicheros.sh f file
#   ./21_directorioFicheros.sh d directorio


echo -e "\nEscribir en un archivo"

echo "Valores con el comando echo" >> $1

#Adicion multilinea
cat <<EOM >>$1
$2
EOM
                                                                                                                                                                                                 23_readfile.sh                                                                                      0000775 0001750 0001750 00000001234 13770443420 013022  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar como leer en un archivo
#Creado por: @israel870730

#Para ejecutarlo:
#   ./21_directorioFicheros.sh f file
#   ./21_directorioFicheros.sh d directorio


echo -e "\nLeer en un archivo"

echo -e "\nSalida del fichero que se pasa como parameto usando el comando cat:"
cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

#Aqui vamos a utilizar la variable IFS ( Internal Field Seperator) para evitar que los espacios en blanco al principio y al final sean omitidos
echo -e "\nLeeer archivoslinea por linea utilizando el while"
while IFS= read pp
#while read pp
do
    echo "$pp"
done < $1
                                                                                                                                                                                                                                                                                                                                                                    24_fileOperaciones.sh                                                                               0000775 0001750 0001750 00000001001 13770447725 014363  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar las operaciones de un archivo
#Creado por: @israel870730

#Para ejecutarlo:
#   ./21_directorioFicheros.sh f file
#   ./21_directorioFicheros.sh d directorio


echo -e "\nOperaciones de un archivo"
mkdir -m 755 backup

echo -e "\nCopiar los scrip del sirectorio actula al directorio nuevo backup"
cp *.* backup/
ls -la backup/

echo -e "\nMover el directorio backup haci home: $HOME"
mv backup/ $HOME

echo -e "\nEliminar los arcivos .txt"
#rm $HOME/backup/*.txt
rm *.txt
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               25_targzip.sh                                                                                       0000775 0001750 0001750 00000000372 13771012075 012732  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar y gzip
#Creado por: @israel870730

echo "Enpaquetar todos los scripts del curso"
tar -cvf curso.tar *.sh

echo "Empaquetar un solo archivo, con un ratio 9"
gzip -9 salida
                                                                                                                                                                                                                                                                      26_pbzip2.sh                                                                                        0000775 0001750 0001750 00000000434 13771012622 012456  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando pbzip
#Creado por: @israel870730

echo "Enpaquetar todos los scripts del curso"
tar -cvf curso1.tar *.sh
pbzip2 -f curso1.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > curso2.tar.bz2
                                                                                                                                                                                                                                    2_variables_2.sh                                                                                    0000775 0001750 0001750 00000000116 13764566037 013370  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Variables

echo "Opcion nombre pasada del otro script: $nombre"

                                                                                                                                                                                                                                                                                                                                                                                                                                                  2_variables.sh                                                                                      0000775 0001750 0001750 00000000366 13764566633 013160  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Variables

opcion=0
nombre=Israel

echo "Opcion: $opcion y Nombre: $nombre"

#Exportar variable para que este disponible en otros script
export nombre

#Llamar al sgte scrip para recuperar la variable que exporte
sh 2_variables_2.sh
                                                                                                                                                                                                                                                                          3_operadores.sh                                                                                     0000775 0001750 0001750 00000001567 13764572224 013351  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Programa para ver los tipos de aporadores

numA=10
numB=4

echo "Operadores aritmetrico"
echo "Numero: A=$numA y B=$numB"
echo "Sumar A + B =" $((numA + numB))
echo "Restar A - B =" $((numA - numB))
echo "Multiplicar A * B =" $((numA * numB))
echo "Dividir A / B =" $((numA / numB))
echo "Residuo A % B =" $((numA % numB))


echo -e "\n Operadores Relacionales"
echo "Numero: A=$numA y B=$numB"
echo "A > B =" $((numA > numB))
echo "A < B =" $((numA < numB))
echo "A >= B =" $((numA >= numB))
echo "A <= B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))


echo "\n Operadores Asignacion"
echo "Numero: A=$numA y B=$numB"
echo "Sumar A += B =" $((numA += numB))
echo "Restar A -= B =" $((numA -= numB))
echo "Multiplicar A *= B =" $((numA *= numB))
echo "Dividir A /= B =" $((numA /= numB))
echo "Residuo A %= B =" $((numA %= numB))

                                                                                                                                         4_argumanetos.sh                                                                                    0000775 0001750 0001750 00000000530 13764573416 013525  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Programa para ejemplso de argumentos
#Para que funcione este script hay que pasarle los parametros asi: sh 4_parametros.sh parm1 parm2


nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es $nombreCurso y es en el horario $horarioCurso"
echo "El numero de parametros enviados es: $#"
echo "Los parametros enviados son: $*"
                                                                                                                                                                        5_comandos.sh                                                                                       0000775 0001750 0001750 00000000254 13764574752 013013  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Programa para leer comandos

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "la ubicacion es: $ubicacionActual"
echo "Infromacion del Kernel: $infoKernel"
                                                                                                                                                                                                                                                                                                                                                    6_echoRead.sh                                                                                       0000775 0001750 0001750 00000000454 13766205176 012716  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Programa para ejemplificar como capturar la informacion del usurio utilizando el comando echo, read y la variable $REPLY
#Autor: @iromero


option=0
name=""
pass=""
echo -n "Set you option:"
read option=$REPLY
echo -n "Set your name:"
read name=$REPLY
echo "option:$option , name:$name"
                                                                                                                                                                                                                    6_read.sh                                                                                           0000775 0001750 0001750 00000000570 13766211240 012103  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Programa para ejemplificar como capturar la informacion del usurio utilizando el comando read 
#Autor: @iromero


option=0
name=""
pass=""

echo "Programa de utilidades"
read -p "Set you option:" option
read -p "Set your name:" name
echo "option:$option , name:$name"

read -s -p "Ingrese su contrase?a para confirmar:" pass
echo ""
echo "Tu password es:$pass" 

                                                                                                                                        7_expresionesRegulares.sh                                                                           0000775 0001750 0001750 00000002157 13766232075 015423  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Programa para probar las expresiones regulares
#Autor: Israel Romero iromero

identificacionRegex='^[0-9]{10}'
paisRegex='^CU|UY|US$'
#fechaNacimientoRegex='^19|20[0-9]{2}[1-12][1-31]'
fechaNacimientoRegex='^(19|20)([0-9]){2}(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$'

echo "Expresiones regulares"
read -p "Ingresar una identificacion: " identificacion
read -p "Ingresar las iniciales de un Pais [CU, UY, US]: " pais
read -p "Ingresar la fecha de nacimiento [yyyyMMdd]: " fechaNacimiento

#para comparar la expresión se debe utilizar el siguiente formato especial if [[ $variable =~ $expresionRegular ]]

#Validacion Identificacion
if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "Identificacion $identificacion valida"
else
    echo "Identificacion $identificacion invalida"
fi

#Validacion Pais
if [[ $pais =~ $paisRegex ]]; then
    echo "Pais $pais valida"
else
    echo "Pais $pais invalido"
fi

#Validacion Fecha de Nacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
    echo "Fecha Nacimiento $fechaNacimiento valida"
else
    echo "Fecha Nacimiento $fechaNacimiento invalida"
fi
                                                                                                                                                                                                                                                                                                                                                                                                                 8_readValidate.sh                                                                                   0000775 0001750 0001750 00000000732 13766235163 013571  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Programa para ejemplificar como capturar la informacion del usurio y validarla 
#Autor: @iromero


option=0
name=""
pass=""

echo "Programa de utilidades"
#Acepta el ingreso de informacion de solo un caracter
read  -n1 -p "Set you option:" option
echo -e "\n"
read -n10 -p "Set your name:" name
echo -e "\n"
echo "option:$option , name:$name"
echo -e "\n"

read -n10 -s -p "Ingrese su contrase?a para confirmar:" pass
echo -e "\n"
echo "Tu password es:$pass" 

                                      9_options.sh                                                                                        0000775 0001750 0001750 00000000705 13766276026 012703  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Programa para ejemplificar como se realiza el paso de opciones con o sin parametros
#Autor: @iromero


echo "Programa opciones"
#Opciones
echo "Opcion 1 enviada: $1"
echo "Opcion 2 enviada: $2"
echo "Opcion enviadas: $*"
echo "\n"

echo "Recuperar Valores"
while [ -n "$1" ]
do
case "$1" in
-a) echo "-a option utilizada";;
-b) echo "-b option utilizada";;
-c) echo "-c option utilizada";;
-*) echo "$! no es una opcion";;

esac
shift
done
                                                           kk.sh                                                                                               0000775 0001750 0001750 00000000122 13770545216 011351  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash

date=$(date +'%Y-%m-%d')
nombre="Israel"
touch "$nombre"_"$date".log
                                                                                                                                                                                                                                                                                                                                                                                                                                              reto1.sh                                                                                            0000775 0001750 0001750 00000000244 13766120653 012002  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Programa que lee 2 variables y las imprime
#Autor: @iromero

nombre=Israel
apellidos="Romero Garcia"

echo "El nombre completo es: $nombre $apellidos"
                                                                                                                                                                                                                                                                                                                                                            reto2-1.sh                                                                                          0000775 0001750 0001750 00000001133 13766563700 012143  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Reto num2, programa para saber el nombre completo entrado por consola y demas informacion
#El mismo reto esta realizado tambien para entrar los datos como parametros del script


nombre=""
apellidos=""
edad=0
direccion=""
numTelf=""

echo "Informacion completa como parametro"
while [ -n "$1" ]
do
case "$1" in

-a)
    parametroA="$2"
echo "El nombre es: $parametroA";;
#shift
#;;

-b) 
   parametroB="$2"
echo "El apellido es: $parametroB";;
#shift
#;;

-c) 
    parametroC="$2"
echo "La edad es: $parametroC";;
#shift
#;;



-*) echo "$! Hay una opcion no es valida";;

esac
shift
done

                                                                                                                                                                                                                                                                                                                                                                                                                                     reto2.sh                                                                                            0000775 0001750 0001750 00000002755 13766571160 012017  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Reto num2, programa para saber el nombre completo entrado por consola y demas informacion
#El mismo reto esta realizado tambien para entrar los datos como parametros del script


nombre=""
apellidos=""
edad=0
direccion=""
numTelf=""


validarTexto='^([A-Z]{1})[a-z]+$'
validarDir='^([A-Z?a-z?0-9.,#/-\s]+)$'
#validarDir='^([A-Z]{1})[a-z][0-9].,#/-+$'
validarNum='^([0-9]{2})$'
validarTelf='[0-9]{8}$'


echo "Sistema de Informacion"

read -p "Ingrese su Nombre:" nombre
#Validacion Nombre
if [[ $nombre =~ $validarTexto ]]; then
    echo "Nombre $nombre valido"
else
    echo "Nombre $nombre invalido"
fi
echo ""


read -p "Ingrese su Apellidos:" apellidos
#Validacion Apellidos
if [[ $apellidos =~ $validarTexto ]]; then
    echo "Apellido $apellidos valido"
else
    echo "Apellido $apellidos invalido"
fi

echo ""

read -p "Ingrese su Edad:" edad
#Validacion Edad
if [[ $edad =~ $validarNum ]]; then
    echo "Edad $edad valido"
else
    echo "Edad $edad invalido"
fi

echo ""

read -p "Ingrese su Direccion:" direccion
#Validacion Direccion
if [[ $direccion =~ $validarDir ]]; then
    echo "Direccion $direccion valida"
else
    echo "Direccion $direccion invalida"
fi

echo ""

read -p "Ingrese su Num Telefonico:" numTelf
#Validacion Nombre
if [[ $numTelf =~ $validarTelf ]]; then
    echo "Telf $numTelf valido"
else
    echo "Telf $numTelf invalido"
fi

echo ""
echo "Tu nombre completo es $nombre $apellidos y tienes $edad annos de edad, vives en $direccion y tu num de telefono es: $numTelf"

                   reto3.sh                                                                                            0000775 0001750 0001750 00000002505 13767310732 012006  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Programa reto #3

edadRegex='^([0-9]{1,2})$'
letrasRegex='^([A-Z]{1})[a-z]$'

opcion=1
edad=0
folder=""
nombre=""

echo "1 - Saber a que segmento de edad pertenesco"
echo "2 - Verificar existencia de directorio"
echo "3 - Verificar nombre"

read -p "Ingrese una opcion: " opcion
echo -e "\n"

case $opcion in
    "1") read -p "Ingrese su edad: " edad

    if [[ $edad =~ $edadRegex ]]; then

        if [ $edad -ge 0 ] && [ $edad -le 10 ]; then
            echo "Usted es un BB"
         elif [ $edad -gt 10 ] && [ $edad -le 17 ]; then
            echo "Usted es un adolecente"
         elif [ $edad -gt 17 ] && [ $edad -le 60 ]; then
            echo "Usted esta en edad de trabajo"
         else
            echo "Usted esta en edad de retiro"
         fi

      else
        echo "La edad esta incorrecta"
      fi;;

    "2") read -p "Introduce la ruta del directorio para validar si existe: " folder
        if [ -d $folder ]; then
            echo "El directorio $folder existe"
        else
            echo "El directorio no existe"
        fi;;

    "3") read -p "Introdusca su nombre completo: " nombre
            if [[ $nombre =~ $letrasRegex ]]; then 
                echo "Su nombre es $nombre"
            else
                echo " Su nombre esta incorrecto"
            fi;;

    *) echo -e "Opcion incorrecta";;
esac
                                                                                                                                                                                           reto4.sh                                                                                            0000775 0001750 0001750 00000003677 13770267215 012023  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
# Programa para ver:
#los procesos actuales
#memoria disponible
#espacio en Disco
#Informacion de red
#variables de entorno
#informacion de los progrmas instalados
#Hacer un backup

opcion=0

while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menú de opciones
    echo "-----------------------------------------"
    echo "              Programa de Utilidad       "
    echo "-----------------------------------------"
    echo "              MENÚ PRINCIPAL             "
    echo "-----------------------------------------"
    echo "1. Ver los procesos actules del servidor"
    echo "2. Memoria disponible"
    echo "3. Espacio en Disco"
    echo "4. Informacion de red"
    echo "5. Variables de Entorno"
    echo "6. Informacion de paquetes instalados"
    echo "7. Hacer un backup con Zip y Tar"
    echo "8. Salir"

    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción [1-5]:" opcion

    #Validar la opción ingresada
    case $opcion in
        1)
            echo -e "\n\nProcesos:"
            echo "$(ps -aux)"
            sleep 3
            ;;

        2)
            echo -e "\n\nMemoria disponible"
            echo "$( free -h)"
            sleep 3
            ;;

        3)
            echo -e "\n\nEspacio en Disco"
            echo $"$( df -h)"
            sleep 3
            ;;

        4)
            echo -e "\n\nInformacion de red."
            echo "$( netstat -r)"
            sleep 3
            ;;

        5)
            echo -e "\n\nVariables de Entorno"
            echo "$(env)"
            sleep 3
            ;;
        6)
            echo -e "\n\nInformacion de paquetes instalados"
            echo $(dpkg -l)
            sleep 3
            ;;
        7)
            echo -e "\n\nHacer un backup"
            zip -r "pwd.zip" "pwd"
            sleep 10
            ;;
        8)
            echo -e "\n\nSalir"
            clear
            exit 0
            ;;
    esac
done
                                                                 reto5.sh                                                                                            0000775 0001750 0001750 00000003416 13770547373 012021  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #!/bin/bash
#Programa que lee 2 variables y las imprime
#Autor: @iromero

opcion=0
nombre=""
eliminar=""
date=$(date +'%Y-%m-%d')
#Aqui lo que voy hacer es que el usario entre el nombre del fichero que quiere crear,si existe se lo informo que ya esta y solo puede eliminarlo, si no lo  creo con la hora completa, luego le doy la opcion de que lo elimine y la ultima opcion es salir de programa

while :
do
echo "-----------------------------------"
echo "               Reto 5              "
echo "-----------------------------------"

echo "1- Crear un fichero con el sgte formato file_yymmdd"
echo "2- Ingrese el nombre del fichero que quiere eliminar"
echo "3- Salir"
echo -e "\n"

read -n1 -p "Ingrese una opción [1-3]:" opcion

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
            echo -e "\n\nSalir"
            clear
            exit 0
            ;;
    esac
done
                                                                                                                                                                                                                                                  test.sh                                                                                             0000775 0001750 0001750 00000002214 13766235646 011737  0                                                                                                    ustar   israel                          israel                                                                                                                                                                                                                 #/usr/bin/fish

set -l dni_regex '^CC|CE\s?\d{6,9}$'
set -l city_regex '^BGT|MDE$'
set -l birthday_regex '^((19[2-9]\d)|(20[0-1]\d))-((0[1-9])|(1[0-2]))-(0[1-9]|([1-2][0-9])|(3[0-1]))$' # 1920-01-01 - 2019-12-31
set -l reply

read -P 'Introduce your DNI (CC/CE 123456789): ' -l dni
read -P 'Introduce your city\s initials (BGT, MDE): ' -l city
read -P 'Introduce your birthday (yyy-mm-dd):' -l birthday

while true
    read -n1 -P 'Do you want to validate the information? (Y/n): ' reply

    if string match --regex --quiet '(^[y|n]$|^$)' $reply
        break
    else
        echo 'Please respond with a `y` or a `n`'
    end
end

if test $reply = 'y' -o $reply = ''
    if string match --regex --quiet $dni_regex $dni
        echo "✓ The DNI is correct"
    else
        echo "× The DNI `$dni` is incorrect"
    end

    if string match --regex --quiet $city_regex $city
        echo "✓ The City is correct"
    else
        echo "× The City `$city` is incorrect"
    end

    if string match --regex --quiet $birthday_regex $birthday
        echo "✓ The Birthday is correct"
    else
        echo "× The Birthday `$birthday` is incorrect"
    end
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    