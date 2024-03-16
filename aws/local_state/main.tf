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
  #new line added here
  access_key = "AKIA47CRYK2BY2U47QNB"
  secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0014ce3e52359afbd"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

