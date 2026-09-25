resource "aws_instance" "EC2-Terraform" {
  ami                         = "ami-0b6d9d3d33ba97d99"
  instance_type               = "t3.micro"
  key_name                    = data.aws_key_pair.terraform-key.key_name
  subnet_id                   = data.terraform_remote_state.network.outputs.subnet_id_terraform
  security_groups             = [data.terraform_remote_state.network.outputs.security_group_id_terraform]
  associate_public_ip_address = true
  availability_zone           = "us-east-1a"


  root_block_device {
    volume_size = 9
    volume_type = "gp3"
  }

  tags = {
    Name = "EC2-Terraform"
  }
}

data "aws_key_pair" "terraform-key" {
  key_name = "terraform-teste"
}