terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  #remote state storage location
  backend "s3" {
    bucket         = "terraform-demo1-bucket-dev"
    key            = "roboshop-sg-rules.tfstate"
    region         = "ap-southeast-2"
    encrypt        = true
    # Optional: enable native S3 locking (Terraform 1.10+)
    use_lockfile   = true
  }
}


# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-2"
}
