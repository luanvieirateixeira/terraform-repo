resource "aws_security_group" "security_group_terraform" {
  name        = "Security_group_terraform"
  description = "Permite conexão SSH, ICMP e trafego por toda internet"
  vpc_id      = aws_vpc.vpc_terraform.id

  tags = {
    Name = "SG Terraform"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.security_group_terraform.id
  cidr_ipv4         = aws_vpc.vpc_terraform.cidr_block
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.security_group_terraform.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.security_group_terraform.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_vpc_security_group_ingress_rule" "allow_icmp" {
  security_group_id = aws_security_group.security_group_terraform.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = -1
  ip_protocol       = "icmp"
  to_port           = -1
}