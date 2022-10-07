import boto3

# Criar um client para interagir com AWS S3
s3_client = boto3.client('s3')

s3_client.upload_file("data/microdados_enem_2020/DADOS/MICRODADOS_ENEM_2020.csv",
                      "datalake-adriano-523003372975",
                      "raw-data/data/MICRODADOS_ENEM_2020.csv")
print("All_Done")