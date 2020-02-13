output "services_subnet_id" {
  value = data.terraform_remote_state.subnet.outputs.services_subnet_id
}

output "database_subnet_id" {
  value = data.terraform_remote_state.subnet.outputs.database_subnet_id
}

#just for testing
output "uuid" {
  value = "${random_id.random.dec}"
}