terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket         = "rajesh-remote-state"
    key            = "expense"
    region         = "us-east-1"
    dynamodb_table = "raj-locking"

  }
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}