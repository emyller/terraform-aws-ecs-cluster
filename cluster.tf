resource "aws_ecs_cluster" "main" {
  /*
  The ECS cluster itself
  */
  name = var.name
}

resource "aws_ecs_cluster_capacity_providers" "fargate" {
  /*
  EC2 capacity provider
  */
  cluster_name = aws_ecs_cluster.main.name
  capacity_providers = ["FARGATE"]
}

resource "aws_ecs_cluster_capacity_providers" "ec2" {
  /*
  EC2 capacity provider
  */
  count = local.is_ec2 ? 1 : 0
  cluster_name = aws_ecs_cluster.main.name
  capacity_providers = [one(module.ec2[*]).ecs_capacity_provider.name]
}
