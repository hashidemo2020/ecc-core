
resource "aws_subnet" "services" {
  vpc_id     = data.terraform_remote_state.vpc.outputs.vpc_id
  cidr_block = var.services_subnet_cidr
  tags = var.default_tags
}

resource "aws_subnet" "database" {
  vpc_id     = data.terraform_remote_state.vpc.outputs.vpc_id
  cidr_block = var.database_subnet_cidr
  tags = var.default_tags
}