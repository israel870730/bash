#!/bin/bash
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
