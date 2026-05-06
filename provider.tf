terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
     version = "6.16.0"
    }
  }
  backend "s3" {
    bucket         = "rrajesh-reddy-remote-state"
    key            = "expense"
    region         = "us-east-1"
    dynamodb_table = "rajesh-locking"

  }
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}
