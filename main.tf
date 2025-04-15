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

//random_id resource named "bucket_suffix" with a byte_length of 6. This ID will be used to create a unique name for the S3 bucket.
resource "random_id" "bucket_suffix" {
  byte_length = 6
}

//aws_s3_bucket resource named "example_bucket". Using interpolation to create a unique bucket name by appending the random ID to "example-bucket-".
resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket-${random_id.bucket_suffix.hex}"
}

//output block to output the name of the created bucket.
output "bucket_name" {
  value = aws_s3_bucket.example_bucket.bucket
}