#this code is used to add in the VM into application load balancer
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


resource "aws_elb_attachment" "terraformgiteanlb" {
  elb = "terraformgiteanlb"
  instance = "i-0bbcf322781e9b7eb"
}
