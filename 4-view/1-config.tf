data "terraform_remote_state" "subnet" {
  backend = "remote"
  config = {
    organization = var.remote_organization
    workspaces = {
      name = var.subnet_remote_workspace_name
    }
  }
}

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
