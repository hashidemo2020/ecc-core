
resource "aws_subnet" "services" {
  vpc_id     = data.terraform_remote_state.vpc.outputs.vpc_id
  cidr_block = "10.0.0.0/24"
  tags = var.default_tags
}

