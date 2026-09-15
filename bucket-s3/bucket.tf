resource "aws_s3_bucket" "bucketterraform" {
  bucket = "bucket_by_terraform"

  tags = {
    Name        = "terraform-bucket"
    Environment = "DevOps"
  }
}