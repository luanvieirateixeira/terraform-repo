resource "aws_s3_bucket" "bucket_terraform" {
  bucket = "bucket_by_terraform_s3"

  tags = {
    Name        = "terraform_bucket"
    Environment = "DevOps"
  }
}