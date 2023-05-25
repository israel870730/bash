#!/bin/bash
#Programa para ejemplificar como capturar la informacion del usurio utilizando el comando echo, read y la variable $REPLY
#Autor: @iromero


option=0
name=""
pass=""
echo -n "Set you option:"
read option=$REPLY
echo -n "Set your name:"
read name=$REPLY
echo "option:$option , name:$name"
