module "supabase" {
  source = "./supabase"

  postgres_password    = random_password.psql.result
  jwt_secret           = random_password.jwt.result
  jwt_anon_key         = jwt_hashed_token.anon.token
  jwt_service_role_key = jwt_hashed_token.service_role.token
  supabase_dc_version  = var.supabase_dc_version
}

module "sce-app" {
  source = "./app"

  jwt_anon_key    = jwt_hashed_token.anon.token
  sce_app_version = var.sce_app_version
}
module "mail-function" {
  source = "./mail-function"

  jwt_service_role_key = jwt_hashed_token.service_role.token
}