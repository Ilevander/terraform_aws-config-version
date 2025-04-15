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