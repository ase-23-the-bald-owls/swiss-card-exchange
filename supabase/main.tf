resource "aws_s3_bucket" "supabase-bucket" {
  bucket = local.supabase.bucket_name
}

resource "aws_ecs_cluster" "sce-cluster" {
  name = "supabase-cluster"
}

resource "aws_ecs_task_definition" "supabase-dc" {
  family                = "supabase-dc"
  container_definitions = jsonencode(local.supabase-dc-ecs-config)
  volume {
    name      = local.docker_sock_volume_name
    host_path = "/var/run/docker.sock"
  }
}

resource "aws_ecs_service" "run-task" {
  name            = "run-task"
  task_definition = aws_ecs_task_definition.supabase-dc.arn
  cluster         = aws_ecs_cluster.sce-cluster.id
  launch_type     = "FARGATE"
}
