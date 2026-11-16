variable "env" {
  description = "The environment name"
  type        = string
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "hash_key" {
  description = "The name of the hash key for the DynamoDB table"
  type        = string
}

variable "table_name" {
  description = "The name of the DynamoDB table"
  type        = string
}
variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
}