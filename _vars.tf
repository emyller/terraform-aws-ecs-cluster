variable "name" {
  description = "The name of the cluster to manage."
  type = string
}

variable "vpc_id" {
  description = "VPC to put resources in."
  type = string
}

variable "ec2_settings" {
  description = "EC2-specific settings, when using EC2 as default provider."
  type = object({
    subnets = list(string)
    instance_type = string
    instance_key_name = string
    max_instances_count = number
  })
  default = null
}

variable "ingress_cidr_blocks" {
  type = map(any)
  default = {}
}

variable "ingress_security_groups" {
  type = map(any)
  default = {}
}

variable "extra_security_groups" {
  type = list(string)
  default = []
}
