resource "aws_s3_bucket" "bucket_terraform" {
  bucket = "bucket_by_terraform"

  tags = {
    Name        = "terraform-bucket"
    Environment = "DevOps"
  }
}