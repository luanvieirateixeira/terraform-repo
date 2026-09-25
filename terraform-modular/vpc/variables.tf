variable "cidr_vpc" {
    description = "Variavel para informar o CIDR da VPC"
    type = string
    default = "10.0.0.0/16"
}

variable "cidr_subnet" {
    description = "Variavel para informar o CIDR da Subnet"
    type = string
    default = "10.0.1.0/24"
}

variable "az_zone_subnet" {
    description = "Variavel para informar a availability zone da Subnet"
    type = string
    default = "us-east-1a"
}