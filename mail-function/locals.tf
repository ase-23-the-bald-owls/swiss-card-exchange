locals {

  mail-function-ecs-config = [
    {
      "name"       = "mail-function-task",
      "image"      = "ghcr.io/ase-23-the-bald-owls/swiss-card-exchange/sce-mail-function:${var.mail_function_version}"
      "essential"  = true,
      "privileged" = true,
      "environment" = [
        { "name" = "NEXT_PUBLIC_SUPABASE_SERVICE_ROLE_KEY", "value" = var.jwt_service_role_key },
        { "name" = "NEXT_PUBLIC_SUPABASE_URL", "value" = "http://supabase.local" },
        { "name" = "NEXT_PUBLIC_MAIL_HOST", "value" = "mail" },
      ]
    }
  ]
}
