#!/bin/bash

# Variables
BUCKET_NAME=""  #pon el nombre del bucket
REGION="eu-south-2"  #región España

# Creación del bucket
aws s3api create-bucket \
    --bucket $BUCKET_NAME \
    --region $REGION \
    --create-bucket-configuration LocationConstraint= eu-south-2 \ 
    --acl private

echo "Bucket $BUCKET_NAME creado exitosamente"


