terraform {
  required_version = ">= 0.12" 
}

provider "aws" {
  region = var.aws_region
}


data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    #organization = var.vpc_organization
    workspaces = {
      name = var.vpc_remote_workspace_name
    }
  }
}
