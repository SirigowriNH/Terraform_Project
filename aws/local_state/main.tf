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
  region  = "eu-north-1"
}

resource "aws_instance" "terraform_server" {
  ami           = "ami-0014ce3e52359afbd"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

