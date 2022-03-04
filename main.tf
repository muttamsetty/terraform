#variables
variable "aws_secret_key" {}
variable "aws_access_key" {}

provider "aws" {
  profile    = "default"
  region     = "us-east-1"
  secret_key = var.aws_secret_key
  access_key = var.aws_access_key
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.21"
    }
  }
}
