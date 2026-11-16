
output "s3_bucket_name" {
  description = "Terraform state bucket name"
  value       = aws_s3_bucket.example.id
}

output "dynamodb_table_name" {
  description = "Terraform state locking table"
  value       = aws_dynamodb_table.terraform_locks.name
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.example.arn
}
