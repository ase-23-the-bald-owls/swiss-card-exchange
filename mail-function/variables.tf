variable "jwt_service_role_key" {
  description = "jwt service role key"
  type        = string
}
variable "mailfunction_bucket_name" {
  description = "bucket name for the mailfunction cronJob"
  type        = string
  default     = "mailfunction"
}