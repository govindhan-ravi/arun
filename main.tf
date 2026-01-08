terraform {
  cloud {
    organization = "monicasri"

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

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
}
