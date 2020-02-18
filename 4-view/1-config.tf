

resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }
  byte_length = 8
}

resource "null_resource" "rotate" {
  triggers = {
    uuid_hex = random_id.random.hex
  }
}

data "terraform_remote_state" "subnet" {
  backend = "remote"
  
  config = {
    hostname = "app.terraform.io"
    organization = var.remote_organization
    token = var.token
    workspaces = {
      name = var.subnet_remote_workspace_name
    }
  }
}
