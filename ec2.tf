module "ec2" {
  /*
  EC2 machinery if using it as capacity provider
  */
  source = "./ec2"
  count = local.is_ec2 ? 1 : 0

  name = var.name
  security_group_id = module.security_group.id
  extra_security_groups = var.extra_security_groups
  subnets = var.ec2_settings.subnets
  instance_type = var.ec2_settings.instance_type
  instance_key_name = var.ec2_settings.instance_key_name
  max_instances_count = var.ec2_settings.max_instances_count
}
