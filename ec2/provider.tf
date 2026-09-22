terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0" #Irá pegar a versão mais recente do 6.x
    }
  }
  backend "s3" { #Bucket que será armazenado o terraform.state
    bucket = "luan-terraformlabs"
    key    = "dev-teste/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}