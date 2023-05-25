#!/bin/bash
# Programa para ejemplificar la forma d ecomo transferir por la red utilizando el comando rsync, utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencias
#Creado por: @israel870730

echo "Enpaquetar todos los scripts del curso y transferirlo a otro equipo, tulizando el comando rsync"

host=""
usuario=""

read -p "Ingrese el host: " host
read -p "Ingrese el usuario: " usuario

echo .e "\nEmpaquetar y tranferir por la red"

rsync -avz $(pwd) $usuario@$host:/home/israel/prueba
#rsync -avz $(pwd) israel@192.168.1.11:/home/israel/prueba
