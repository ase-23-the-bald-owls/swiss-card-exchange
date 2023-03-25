output "task_definition_arn" {
  value = module.supabase.task_definition_arn
}

output "ANON_KEY" {
  value     = jwt_hashed_token.anon.token
  sensitive = true
}

output "SERVICE_ROLE_KEY" {
  value     = jwt_hashed_token.service_role.token
  sensitive = true
}

output "POSTGRES_PASSWORD" {
  value     = random_password.psql.result
  sensitive = true
}
