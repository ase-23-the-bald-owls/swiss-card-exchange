locals {
  supabase = {
    bucket_name : var.supabase_bucket_name
  }

  localstack = {
    host : "localhost.localstack.cloud"
    port : 4566
    loadbalancer_subdomain : "elb"
    storage_subdomain : "s3"
  }

  domain = var.domain == "" ? "${local.localstack.host}:${local.localstack.port}" : var.domain

  ttl = {
    "A"     = 1800
    "CNAME" = 43200
    "MX"    = 14400
    "TXT"   = 3600
  }

  smtp_sender_name   = var.smtp_sender_name != "" ? var.smtp_sender_name : var.smtp_admin_user
  smtp_nickname      = var.smtp_nickname != "" ? var.smtp_nickname : var.smtp_sender_name != "" ? var.smtp_sender_name : var.smtp_admin_user
  smtp_reply_to      = var.smtp_reply_to != "" ? var.smtp_reply_to : var.smtp_admin_user
  smtp_reply_to_name = var.smtp_reply_to_name != "" ? var.smtp_reply_to_name : var.smtp_sender_name != "" ? var.smtp_sender_name : var.smtp_admin_user

  docker_sock_volume_name = "docker-sock"

  supabase-dc-ecs-config = [
    {
      "name"       = "supabase-dc-task",
      "image"      = "ghcr.io/ase-23-the-bald-owls/swiss-card-exchange/supabase-dc:${var.supabase_dc_version}"
      "essential"  = true,
      "privileged" = true,
      "environment" = [
        { "name" = "POSTGRES_PASSWORD", "value" = var.postgres_password },
        { "name" = "JWT_SECRET", "value" = var.jwt_secret },
        { "name" = "ANON_KEY", "value" = var.jwt_anon_key },
        { "name" = "SERVICE_ROLE_KEY", "value" = var.jwt_service_role_key },
        { "name" = "DOMAIN", "value" = local.domain },
        { "name" = "TIMEZONE", "value" = var.timezone },
        { "name" = "POSTGRES_HOST", "value" = "db" },
        { "name" = "POSTGRES_PORT", "value" = "5432" },
        { "name" = "POSTGRES_DB", "value" = "postgres" },
        { "name" = "SPACES_REGION", "value" = var.region },
        { "name" = "SPACES_GLOBAL_S3_BUCKET", "value" = local.supabase.bucket_name },
        { "name" = "SPACES_ACCESS_KEY_ID", "value" = "test" },
        { "name" = "SPACES_SECRET_ACCESS_KEY", "value" = "test" },
        { "name" = "SPACES_ENDPOINT", "value" = "localstack:4566" },
        { "name" = "PGRST_DB_SCHEMA", "value" = "public,storage,graphql_public" },
        { "name" = "SITE_URI", "value" = "http://localhost" },
        { "name" = "ADDITIONAL_REDIRECT_URLS", value = "" },
        { "name" = "JWT_EXPIRY", "value" = tostring(3600) },
        { "name" = "DISABLE_SIGNUP", "value" = "false" },
        { "name" = "API_EXTERNAL_URL", "value" = "http://localhost" },
        { "name" = "MAILER_URLPATHS_CONFIRMATION", "value" = "/auth/v1/verify" },
        { "name" = "MAILER_URLPATHS_INVITE", "value" = "/auth/v1/verify" },
        { "name" = "MAILER_URLPATHS_RECOVER", "value" = "/auth/v1/verify" },
        { "name" = "MAILER_URLPATHS_EMAIL_CHANGE", "value" = "/auth/v1/verify" },
        { "name" = "ENABLE_EMAIL_SIGNUP", "value" = "true" },
        { "name" = "ENABLE_EMAIL_AUTOCONFIRM", "value" = "true" },
        { "name" = "SMTP_ADMIN_EMAIL", "value" = var.smtp_admin_user },
        { "name" = "SMTP_HOST", "value" = var.smtp_host },
        { "name" = "SMTP_PORT", "value" = tostring(var.smtp_port) },
        { "name" = "SMTP_USER", "value" = var.smtp_user },
        { "name" = "SMTP_PASS", "value" = "" },
        { "name" = "SMTP_SENDER_NAME", "value" = local.smtp_sender_name },
        { "name" = "ENABLE_PHONE_SIGNUP", "value" = "true" },
        { "name" = "ENABLE_PHONE_AUTOCONFIRM", "value" = "false" },
        { "name" = "STUDIO_DEFAULT_ORGANIZATION", "value" = var.studio_org },
        { "name" = "STUDIO_DEFAULT_PROJECT", "value" = var.studio_project },
        { "name" = "SUPABASE_PUBLIC_URL", "value" = "http://localhost" },
      ],
      "portMappings" = [
      ]
      "mountPoints" = [
        { "sourceVolume" : local.docker_sock_volume_name, "containerPath" = "/var/run/docker.sock" }
      ]
    }
  ]
}
