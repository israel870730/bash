#!/bin/bash
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
