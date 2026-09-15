resource "aws_s3_bucket" "bucket_terraform" {
  bucket = "buckettf"

  tags = {
    Name        = "terraform_bucket"
    Environment = "DevOps"
  }
}