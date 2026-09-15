resource "aws_s3_bucket" "bucket_terraform" {
  bucket = var.bucket_name

  tags = {
    Name        = "terraform_bucket"
    Environment = "DevOps"
  }
}

resource "aws_s3_bucket_versioning" "bucket_terraform_versioning" {
  bucket = aws_s3_bucket.bucket_terraform.id
  versioning_configuration {
    status = "Disable"
  }
}