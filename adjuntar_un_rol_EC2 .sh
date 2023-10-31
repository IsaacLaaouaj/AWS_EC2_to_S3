#!/bin/bash

# Instance profile para el rol:

aws iam create-instance-profile \
    --instance-profile-name WriteS3ObjectProfile


# Añadir el rol al "instance profile":

aws iam add-role-to-instance-profile \
    --instance-profile-name WriteS3ObjectProfile \
    --role-name WriteS3ObjectRole

# Asociar el "instance profile" a la instancia EC2:

aws ec2 associate-iam-instance-profile \
    --instance-id i-4654... \ #Introduce el id de la intancia 
    --iam-instance-profile Name=WriteS3ObjectProfile