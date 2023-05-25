# ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración for
# Autor: Israel Romero - @israel870730

zipFiles=( "folder1" "folder2" "folder3" "folder4" "folder5" "folder6" "folder7" "folder8" )

echo "Comprimir ficheros en un ciclo"
echo ""

for ((i=0; i< ${#zipFiles[*]}; i++))
do
if [ -d ${zipFiles[i]} ]; then
zip -r "${zipFiles[i]}.zip" "${zipFiles[i]}"
else
  mkdir ${zipFiles[i]}
  zip -r "${zipFiles[i]}.zip" "${zipFiles[i]}"
fi
done

