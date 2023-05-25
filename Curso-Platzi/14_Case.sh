#!/bin/bash
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
