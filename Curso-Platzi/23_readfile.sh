#!/bin/bash
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
