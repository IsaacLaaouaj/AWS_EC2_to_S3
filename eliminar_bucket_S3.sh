#!/bin/bash

# Nombre del bucket que deseas eliminar
BUCKET_NAME= " "

# Elimina todos los objetos en el bucket
aws s3 rm s3://$BUCKET_NAME --recursive

# Elimina el bucket
aws s3 rb s3://$BUCKET_NAME

echo "Bucket $BUCKET_NAME eliminado exitosamente"
