#!/bin/bash

#Se establece el usuario de github
export GITHUB_USER="anthony-97"

#Guardando la fecha
DATE=$(date +"%Y-%m-%d")

#Consultando a la api de github
USER_DATA=$(curl -s "https://api.github.com/users/$GITHUB_USER")

#Se extrae el id y la fecha de creacion con jq
USER_ID=$(echo "$USER_DATA" | jq -r '.id')
CREATED_AT=$(echo "$USER_DATA" | jq -r '.created_at')

#Se crea el directorio si no existe
mkdir -p /tmp/$DATE

#Escribiendo el saludo
echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT." > /tmp/$DATE/saludos.log

#Para configurar el cronjob y que el script se ejecute cada 5 min, se deben ejecutar los siguientes comandos
#~$ crontab -e
#Se elije el editor para configurar el archivo de cronjobs
#Se agrega la siguiente linea al archivo, con la ruta del script de la actividad2
#*/5 * * * * /home/polares/Documentos/2S2024/Sistemas Operativos 1/actividad2.sh
#Se guarda y se cierra el archivo