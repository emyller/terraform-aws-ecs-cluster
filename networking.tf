module "security_group" {
  /*
  The security group to wrap resources within the cluster
  */
  source = "emyller/security-group/aws"
  version = "~> 1.0"

  name = "ecs-${var.name}"
  vpc_id = var.vpc_id
  ingress_security_groups = var.ingress_security_groups
  ingress_cidr_blocks = var.ingress_cidr_blocks
  allow_self_ingress = true
}
