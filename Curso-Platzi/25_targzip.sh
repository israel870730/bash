#!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar y gzip
#Creado por: @israel870730

echo "Enpaquetar todos los scripts del curso"
tar -cvf curso.tar *.sh

echo "Empaquetar un solo archivo, con un ratio 9"
gzip -9 salida
