resource "aws_s3_object" "codigo_spark" {
  bucket = aws_s3_bucket.datalake.id
  key    = "emr-code/pyspark/job_spark_from_tf.py"
  acl    = "private"
  source = "../job_spark_emr.py"
  etag   = filemd5("../job_spark_emr.py")
}

resource "aws_s3_object" "script_athena" {
    bucket = aws_s3_bucket.datalake.id
    key    = "athena-results/"
    acl    = "private"
    source = "../.gitkeep"
    etag   = filemd5("../.gitkeep")
}

resource "aws_s3_object" "zona_consumo" {
    bucket = aws_s3_bucket.datalake.id
    key    = "consumer-zone/"
    acl    = "private"
    source = "../.gitkeep"
    etag   = filemd5("../.gitkeep")
}

resource "aws_s3_object" "script_glue" {
    bucket = aws_s3_bucket.datalake.id
    key    = "glue-script/job_spark_from_tf.py"
    acl    = "private"
    source = "../job_spark_glue.py"
    etag   = filemd5("../job_spark_glue.py")
}

resource "aws_s3_object" "dado_nao_tratado" {
    bucket = aws_s3_bucket.datalake.id
    key    = "raw-data/"
    acl    = "private"
    source = "../.gitkeep"
    etag   = filemd5("../.gitkeep")
}