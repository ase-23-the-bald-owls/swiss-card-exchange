resource "aws_ecs_cluster" "sce-app-cluster" {
  name = "sce-app-cluster"
}

resource "aws_ecs_task_definition" "sce-app-task" {
  family                = "sce-app-task"
  container_definitions = jsonencode(local.sce-app-ecs-config)
}

resource "aws_ecs_service" "run-task" {
  name            = "run-task"
  task_definition = aws_ecs_task_definition.sce-app-task.arn
  cluster         = aws_ecs_cluster.sce-app-cluster.id
  launch_type     = "FARGATE"
}
