terraform {
  cloud {
    organization = "neela"

    workspaces {
      name = "tf-cloud-s3"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "myec2" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "myec2"
  }
}

