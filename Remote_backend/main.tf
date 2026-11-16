resource "aws_s3_bucket" "example" {
  bucket = "${var.env}-${var.bucket_name}"

  tags = {
    Name        = "${var.env}-${var.bucket_name}"
    Environment = var.env
  }
}

#versioning

resource "aws_s3_bucket_versioning" "example" {
  bucket = aws_s3_bucket.example.id

  versioning_configuration {
    status = "Enabled"
  }
}

#encyption
resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.example.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

#public access block
resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.example.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}


#dynomodb for locking
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "${var.env}-terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = var.hash_key

  attribute {
    name = var.hash_key
    type = "S"
  }

  tags = {
    Name        = "${var.env}-terraform-locks"
    Environment = var.env
  }
}