#!/bin/bash
# Programa para ejemplificar el uso de los Loop Aninados

echo "Loop Aninados"

for fil in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre del archivo: $fil _ $nombre"
    done
done
