terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "bastion" {
  ami           = "ami-05a0171d0d812f577"
  instance_type = "t2.micro"

  tags = {
    Name = "Bastion"
    OS   = "RHEL8"
  }
}
