#!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando pbzip
#Creado por: @israel870730

echo "Enpaquetar todos los scripts del curso"
tar -cvf curso1.tar *.sh
pbzip2 -f curso1.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > curso2.tar.bz2
