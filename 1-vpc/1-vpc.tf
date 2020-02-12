resource "aws_vpc" "mainvpc" {
  cidr_block       = var.cidr_block
  instance_tenancy = var.tenancy
  tags = var.default_tags
}
