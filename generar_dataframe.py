import pandas as pd
import boto3
from botocore.exceptions import NoCredentialsError

def create_sample_dataframe():
    # Crear un DataFrame de prueba
    data = {'Name': ['Isaac', 'Natalia', 'Antonio'],
            'Location': ['Madrid', 'Barcelona', 'Granada'],
            'Age': [23, 29, 26]}
    df = pd.DataFrame(data)
    
    file_name = "sample_data.csv"
    df.to_csv(file_name, index=False)
    return file_name

def upload_to_s3(file_name, bucket_name):
    # Iniciar el cliente de S3
    s3 = boto3.client('s3')

    try:
        s3.upload_file(file_name, bucket_name, file_name)
        print(f"Successfully uploaded {file_name} to {bucket_name}.")
    except FileNotFoundError:
        print(f"The file {file_name} was not found.")
    except NoCredentialsError:
        print("Credentials not available")

if __name__ == "__main__":
    file_name = create_sample_dataframe()
    bucket_name = "practica-3-bucket"  # Reemplaza con el nombre de tu bucket
    upload_to_s3(file_name, bucket_name)
