
resource "aws_s3_bucket" "cronJob-bucket" {
  bucket = local.mailfunction.bucket_name
}

data "archive_file" "lambda_mail_function" {
  type = "zip"

  source_dir  = "${path.module}/src/index"
  output_path = "${path.module}/src/mail-function.zip"
}

resource "aws_s3_object" "lambda_mail_function" {
  bucket = aws_s3_bucket.lambda_bucket.id

  key    = "mail-function.zip"
  source = data.archive_file.lambda_mail_function.output_path

  etag = filemd5(data.archive_file.lambda_mail_function.output_path)
}