#!/bin/bash

read -p "image-id: " image
read -p "Cuantas instacnias quieres crear: " count
read -p "Tipo de instancia: " tipo
read -p "Nombre de la key: " key
read -p "ID del SG: " sg
read -p "Id de la subnet: " subnet
read -p "Region: " region

aws ec2 run-instances \
--image-id $image \
--count $count \
--instance-type $tipo \
--key-name $key \
--block-device-mapping '[ {"DeviceName": "/dev/xvda", "Ebs": { "DeleteOnTermination": true, "VolumeSize": 10, "VolumeType": "gp3" }}]' \
--security-group-ids $sg \
--subnet-id $subnet \
--region $region
