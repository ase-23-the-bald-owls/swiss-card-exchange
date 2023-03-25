variable "supabase_dc_version" {
  description = "version of the supabase-dc image to deploy"
  type        = string
  default     = "local"
}

variable "password_seed" {
  description = "The seed for the passwords. New passwords are generated if it changes"
  type        = string
  default     = "my secret seed"
}
