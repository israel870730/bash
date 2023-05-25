#!/bin/bash
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
