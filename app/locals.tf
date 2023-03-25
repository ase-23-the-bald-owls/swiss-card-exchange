locals {

  sce-app-ecs-config = [
    {
      "name"       = "supabase-dc-task",
      "image"      = "ghcr.io/ase-23-the-bald-owls/swiss-card-exchange/sce-app:${var.sce_app_version}"
      "essential"  = true,
      "privileged" = true,
      "environment" = [
        { "name" = "NEXT_PUBLIC_SUPABASE_ANON_KEY", "value" = var.jwt_anon_key },
        { "name" = "NEXT_PUBLIC_SUPABASE_URL", "value" = "http://supabase.local" },
      ],
      "portMappings" = [
        {
          "containerPort" = 8080,
          "hostPort"      = 8080
        },
      ]
    }
  ]
}
