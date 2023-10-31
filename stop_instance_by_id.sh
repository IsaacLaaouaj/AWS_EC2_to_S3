#!/bin/bash

# Cargar las variables de entorno desde el archivo .env
source .env

# Detener la instancia por ID
aws ec2 stop-instances --profile $PROFILE --instance-ids "i-67433..." #Introduce el id de tu instáncia