#!/bin/bash

opcion=0
#Fucion para crear instancia
crear_instancia () {
    #echo "Creando instancia..."
    aws ec2 run-instances \
    --image-id ${ami:-ami-06e46074ae430fba6} \
    --count ${count:-1} \
    --instance-type ${instance:-t3.small} \
    --key-name ${key:-Renovite-poc-linux-jumpbox} \
    --block-device-mapping '[ {"DeviceName": "/dev/xvda", "Ebs": { "DeleteOnTermination": true, "VolumeSize": 10, "VolumeType": "gp3" }}]' \
    --security-group-ids ${securitygroup:-sg-02f704014540d1f9b} \
    --subnet-id ${net:-subnet-30c4801e} \
    --region ${region:-us-east-1}
}

#Fucion para taggear instancia
taggear_instancia () {
    aws ec2 create-tags --resources $image --tags \
    Key=$keytag,Value=$valuetag
}

#Fucion para buscar instancia por nombre
buscar_instancia_nombre () {
    aws ec2 describe-instances \
    --filters "Name=tag:$keyn,Values=$valuen" \
    --query "Reservations[].Instances[].InstanceId" \
    --region=${regionb:-us-east-1}
}

#Fucion para buscar ip publica y privada
buscar_ip () {
     aws ec2 describe-instances \
    --filters "Name=tag:$keyn,Values=$valuen" \
    --query "Reservations[].Instances[].{Instance:InstanceId,PublicIpAddress:PublicIpAddress,PrivateIpAddress:PrivateIpAddress}" \
    --output table \
    --region=${regionb:-us-east-1}
}

#Fucion para eliminar instancia
eliminar_instancia () {
    aws ec2 terminate-instances --instance-ids $idinsanciadelete
    echo "Eliminando instancia..."
}

#Fucion para hacer un snaptshop de la instancia
snaptshop_instancia () {
    aws ec2 create-snapshot \
    --volume-id $idsnaptshop \
    --description "This is the volume snapshot from CLI"
}

#Obtener toda la info de una instancia
get_info () {
    aws ec2 describe-instances \
    --filters "Name=tag:$keyn,Values=$valuen" \
    --query "Reservations[].Instances[]" \
    --output table \
    --region=${regionb:-us-east-1}
}

#Obteber ek id del volumen de una instancia
get_volumen_id () {
    aws ec2 describe-instances \
    --filters "Name=tag:$keyn,Values=$valuen" \
    --query "Reservations[].Instances[].{BockId:BlockDeviceMappings[*].Ebs.VolumeId}" \
    --output table \
    --region=${regionb:-us-east-1}
}

while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menú de opciones
    echo "-----------------------------------------"
    echo "EC2UTIL - Programa de Utilidad EC2       "
    echo "-----------------------------------------"
    echo "              MENU PRINCIPAL             "
    echo "-----------------------------------------"
    echo "1. Crear Instancia"
    echo "2. Taggear Instancia"
    echo "3. Buscar instancia por Nombre"
    echo "4. Buscar ip Publica"
    echo "5. Get all Info"
    echo "6. Get volumen id"
    echo "7. Eliminar Instancia"
    echo "8. Create Snaptshop from volumen"
    echo "9. Salir"

    #Leer los datos del usuario - capturar información
    read -p "Ingrese una opción [1-9]: " opcion

    #Validar la opción ingresada
    case $opcion in
    1)
	    #Crear instancia
        echo -e "\n"
	    read -p "Image-Id(ami-06e46074ae430fba6): " ami
        read -p "Count(1): " count
        read -p "Instance-Type(t3.small): " instance
        read -p "Key-Name(Renovite-poc-linux-jumpbox): " key
        read -p "Security-Group-Ids(sg-02f704014540d1f9b): " securitygroup
        read -p "Subnet-Id(subnet-30c4801e): " net
        read -p "Region(us-east-1): " region
        echo "Creando Instancia ...."
	    crear_instancia
        sleep 3
        ;;

    2)
        echo -e "\n"
	    read -p "Image-Id(Ej: i-0ba630c2fa56c36dd): " image
        read -p "Key: " keytag
        read -p "Value: " valuetag
        echo "Aplicando los tag ..."
        taggear_instancia
        sleep 3
        ;;

    3)
        echo -e "\n"
        read -p "Key: " keyn
        read -p "Value: " valuen
        read -p "Region(us-east-1): " regionb
        echo "Buscando la Instancia ...."
        buscar_instancia_nombre
        sleep 10
        ;;

    4)
        echo -e "\n"
        read -p "Key: " keyn
        read -p "Value: " valuen
        read -p "Region(us-east-1): " regionb
        echo "Buscando la ip publica ...."
	    buscar_ip
            sleep 10
            ;;
    5)
        echo -e "\n"
        read -p "Key: " keyn
        read -p "Value: " valuen
        read -p "Region(us-east-1): " regionb
        echo "Get All Info ...."
	    get_info
        sleep 10
        ;;
    6)
        echo -e "\n"
        read -p "Key: " keyn
        read -p "Value: " valuen
        read -p "Region(us-east-1): " regionb
        echo "Search volumen ID ..."
	    get_volumen_id
        sleep 10
        ;;
    7)
        echo -e "\n"
        read -p "Instance-Ids(Ej: i-0ba630c2fa56c36dd): " idinsanciadelete
        echo "Eliminando Instancia ...."
	    eliminar_instancia
	    sleep 3
	    ;;
	8)
        echo -e "\n"
	    read -p "Volume-Id (Ej: vol-0c36bf0d5e4a19159): " idsnaptshop
	    echo "Creando snaptshop..."
	    snaptshop_instancia
	    sleep 3
	    ;;
    9)
        echo -e "\n\nSalir del Programa"
        clear
        exit 0
        ;;
    esac
done
