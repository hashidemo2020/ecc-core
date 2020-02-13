variable "aws_region" {
    description = "the region where thhis vault cluster will be installed"
}

variable "default_tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
}

