variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"   # or any region you want
}

variable "ami" {
  type        = string
  default     = "ami-0453ec754f44f9a4a"
  description = "AMI ID"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "EC2 instance type"
}

