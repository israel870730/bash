#!/bin/bash
# Programa para ejemplificar la creacion de archivos y capetas
#Creado por: @israel870730

#Para ejecutarlo:
#   ./21_directorioFicheros.sh f file
#   ./21_directorioFicheros.sh d directorio



echo "Archivos - Directorios"
if [ $1 = "d" ]; then 
    
    #Aqui valido que no exista el directorio
    if [ -d $2 ]; then 
        echo "El directorio existe"
    else
        mkdir -m 755 $2
        echo "Directoio creado correctamente"
        ls -la $2
    fi

elif [ $1 == "f" ]; then 

    #Aqui valido que no exista el fichero
    if [ -e $2 ]; then
        echo "El fichero existe"
    else
        touch $2
        echo "Archivo creado correctamente"
        ls -la $2
    fi

else
    echo "No existe esa opcion: $1"
fi

