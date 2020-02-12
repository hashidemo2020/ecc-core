variable "aws_region" {
    description = "the region where thhis vault cluster will be installed"
}


variable "tenancy" {
  description = "The tenancy of the instance. Must be one of: default or dedicated."
  default     = "default"
}

variable "cidr_block" {
  description = "VPC CIDR Block"
}

variable "default_tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
}