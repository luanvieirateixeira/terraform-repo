module "vpc" {
  source = "./vpc"
}

module "ec2" {
  source = "./ec2"

  subnet_id_vpc = module.vpc.subnet_id_terraform
  sg_id_vpc     = module.vpc.security_group_id_terraform
}