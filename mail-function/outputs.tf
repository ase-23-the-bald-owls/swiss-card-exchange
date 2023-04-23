output "mail_function_output" {
  description = "Lambda function for the mail Job."

  value = aws_lambda_function.mail_function.function_name
}