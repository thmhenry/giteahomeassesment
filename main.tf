#this file is to create a t2.micro instance in AWS.
terraform {
  required_providers {
    aws = {
      source  = "aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-southeast-1"
  access_key = ""
  secret_key = ""

}

resource "aws_instance" "giteaserver" {
  ami           = "ami-060e277c0d4cce553"
  instance_type = "t2.micro"
}
