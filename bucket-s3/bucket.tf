resource "aws_s3_bucket" "bucket_terraform" {
  bucket = var.bucket_name

  tags = {
    Name        = "terraform_bucket"
    Environment = "DevOps"
  }
}