terraform {
  backend "s3" {
    bucket  = "dev-logaom-dev-terraform-state"
    key     = "terraform-project/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
    #dynamodb_table = "terraform-locks"
    use_lockfile = true
  }
}