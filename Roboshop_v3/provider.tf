# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "devops-60"
    key    = "expense-v1/terraform.tfstate"
    region = "us-east-1"
  }
}
#terraform {
#  required_providers {
#    aws = {
#      source  = "hashicorp/aws"
#      version = "6.47.0"                  # Provider version, if you don't mention it downloads the latest plugins 
#    }
#  }
#}