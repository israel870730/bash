#!/bin/bash
# Programa para mostrar todas las lineas de codigo de los ficheros .sh de este directorio

echo "Loop Aninados"

for file in $(ls *.sh)
do
	echo "--------------- $file ---------------------"
	while read -r linea; do
		echo "$linea"
	done < "$file"
done

