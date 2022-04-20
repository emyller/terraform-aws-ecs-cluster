variable "name" {
  description = "The name of the cluster to manage."
  type = string
}

variable "security_group_id" {
  description = "The ID of the Security Group to assign to EC2 instances."
  type = string
}

variable "extra_security_groups" {
  type = list(string)
  default = []
}

variable "subnets" {
  description = "The subnets to place objects in."
  type = list(string)
}

variable "instance_type" {
  description = "The instance type of the EC2 hosts to spin up."
  type = string
}

variable "instance_key_name" {
  description = "The SSH key name in EC2 to manually connect to hosts."
  type = string
}

variable "max_instances_count" {
  type = number
  description = "The maximum number of instances to provision in the cluster."
  default = 10
}
