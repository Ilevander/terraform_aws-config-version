//Specifying the required Terraform version (~> 1.7). Additionally, defining the required providers and their versions. 
//In this case, aws provider (~> 5.0) and the random provider (~> 3.0).
terraform {
  required_version = "~> 1.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

//provider block to configure the AWS region to "eu-west-1".
provider "aws" {
  region = "eu-west-1"
}