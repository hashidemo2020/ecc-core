variable "aws_region" {
    description = "the region where thhis vault cluster will be installed"
}

variable "default_tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
}

variable "vpc_remote_workspace_name" {
  description = "Remote Workspace where VPC is defined"
}

variable "services_subnet_cidr" {
  description = "CIDR block for the services subnet"
}
