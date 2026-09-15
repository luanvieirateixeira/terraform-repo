resource "aws_s3_bucket" "bucket_terraform" {
  bucket = "bucket-by-terraform-s3-luanvieira"

  tags = {
    Name        = "terraform_bucket"
    Environment = "DevOps"
  }
}