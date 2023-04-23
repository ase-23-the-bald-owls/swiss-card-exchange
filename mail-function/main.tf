
resource "aws_s3_bucket" "cronJob-bucket" {
  bucket = local.mailfunction.bucket_name
}

data "archive_file" "archive_lambda_mail_function" {
  type = "zip"

  source_dir  = path.module
  output_path = "${path.module}/mail-function.zip"
}

resource "aws_s3_object" "mail_function_object" {
  bucket = aws_s3_bucket.cronJob-bucket.id

  key    = "mail-function.zip"
  source = data.archive_file.archive_lambda_mail_function.output_path

  etag = filemd5(data.archive_file.archive_lambda_mail_function.output_path)
}

resource "aws_lambda_function" "mail_function" {
  function_name = "MailFunctionJob"

  s3_bucket = aws_s3_bucket.cronJob-bucket.id
  s3_key    = aws_s3_object.mail_function_object.key

  runtime = "nodejs16.x"
  handler = "mail.handler"

  source_code_hash = data.archive_file.archive_lambda_mail_function.output_base64sha256

  role = aws_iam_role.lambda_exec.arn
}

resource "aws_cloudwatch_log_group" "mail_cloudwatch" {
  name = "/aws/lambda/${aws_lambda_function.mail_function.function_name}"

  retention_in_days = 30
}

resource "aws_iam_role" "lambda_exec" {
  name = "serverless_lambda"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Sid    = ""
      Principal = {
        Service = "lambda.amazonaws.com"
      }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_policy" {
  role       = aws_iam_role.lambda_exec.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_cloudwatch_event_rule" "schedule" {
  name                = "schedule"
  description         = "Schedule for Lambda Function"
  schedule_expression = "cron(* * * * *)"
}

resource "aws_cloudwatch_event_target" "schedule_lambda" {
  rule      = aws_cloudwatch_event_rule.schedule.name
  target_id = "mail_function"
  arn       = aws_lambda_function.mail_function.arn
}
resource "aws_lambda_permission" "allow_events_bridge_to_run_lambda" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.mail_function.function_name
  principal     = "events.amazonaws.com"
}