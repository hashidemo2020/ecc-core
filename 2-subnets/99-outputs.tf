output "services_subnet_id" {
  value = aws_subnet.services.id
}

output "database_subnet_id" {
  value = aws_subnet.database.id
}