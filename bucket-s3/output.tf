output "bucket_id" {
    description = "Output para coletar o ID da bucket S3"
    value = aws_s3_bucket.bucket_terraform.id
}

output "bucket_arn" {
  description = "Output para coletar o arn do bucket S3"
  value = aws_s3_bucket.bucket_terraform.arn

  sensitive = true
}