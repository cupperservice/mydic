terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket    = "circleci-mydic"
    region    = "ap-northeast-1"
    profile   = "mydic"
    key       = "terraform.tfstate"
    encrypt   = true
  }
  
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}
