output "subnet_id_terraform" {
    description = "ID da Subnet"
    value = aws_subnet.subnet_terraform.id
}

output "security_group_id_terraform" {
  description = "ID do Security Group"
  value = aws_security_group.security_group_terraform.id
}
