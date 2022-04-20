output "arn" {
  description = "The ARN of the resouece."
  value = aws_ecs_cluster.main.arn
}

output "name" {
  description = "Name of the cluster."
  value = split("--", join("--", [  # Force-wait for resource
    aws_ecs_cluster.main.arn,  # The ARN only exists after resource
    aws_ecs_cluster.main.name,
  ]))[1]
}

output "security_group_id" {
  description = "The ID of the Security Group created for ECS resources."
  value = module.security_group.id
}
