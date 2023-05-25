#!/bin/bash
#Variables

opcion=0
nombre=Israel

echo "Opcion: $opcion y Nombre: $nombre"

#Exportar variable para que este disponible en otros script
export nombre

#Llamar al sgte scrip para recuperar la variable que exporte
sh 2_variables_2.sh
