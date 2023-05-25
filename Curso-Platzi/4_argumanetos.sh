#!/bin/bash
#Programa para ejemplso de argumentos
#Para que funcione este script hay que pasarle los parametros asi: sh 4_parametros.sh parm1 parm2


nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es $nombreCurso y es en el horario $horarioCurso"
echo "El numero de parametros enviados es: $#"
echo "Los parametros enviados son: $*"
