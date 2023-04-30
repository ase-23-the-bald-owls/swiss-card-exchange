resource "aws_ecs_cluster" "mail-function-cluster" {
  name = "mail-function-cluster"
}

resource "aws_ecs_task_definition" "mail-function-task" {
  family                = "mail-function-task"
  container_definitions = jsonencode(local.mail-function-ecs-config)
}

resource "aws_ecs_service" "run-task" {
  name            = "run-task"
  task_definition = aws_ecs_task_definition.mail-function-task.arn
  cluster         = aws_ecs_cluster.mail-function-cluster.id
  launch_type     = "FARGATE"
}
