resource "aws_vpc" "vpc_terraform" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "VPC-terraform"
  }
}

resource "aws_subnet" "subnet_terraform" {
  vpc_id            = aws_vpc.vpc_terraform.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "subnet-terraform"
  }
}

resource "aws_internet_gateway" "igw_terraform" {
  vpc_id = aws_vpc.vpc_terraform.id

  tags = {
    Name = "igw-terraform"
  }
}

resource "aws_route_table" "route_table_terraform" {
  vpc_id = aws_vpc.vpc_terraform.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_terraform.id
  }

  tags = {
    Name = "route-table-terraform"
  }
}

resource "aws_route_table_association" "association_terraform_rt" {
  subnet_id      = aws_subnet.subnet_terraform.id
  route_table_id = aws_route_table.route_table_terraform.id
}