variable "subnet_id_vpc" {
    description = "Variavel para atribuir o id da Subnet"
    type = string
    default = module.vpc.subnet_id_terraform
}

variable "sg_id_vpc" {
    description = "Variavel para atribuir o id do Security Group"
    type = string
    default = module.vpc.security_group_id_terraform
}