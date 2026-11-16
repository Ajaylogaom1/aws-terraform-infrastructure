variable "project_name" {
    description = "The name of the project"
    type        = string
    default     = "terraform-aws-project"
}
variable "vpc_cidr_block" {
    description = "The CIDR block for the VPC"
    type        = string
    default     = "10.0.0.0/16"
}
variable "public_subnet_cidr" {
    description = "The CIDR block for the public subnet"
    type        = string
    default     = "10.0.1.0/24"
}
variable "private_subnet_1_cidr" {
    description = "The CIDR block for the first private subnet"
    type        = string
    default     = "10.0.2.0/24"
}
variable "private_subnet_2_cidr" {
    description = "The CIDR block for the second private subnet"
    type        = string
    default     = "10.0.3.0/24"
}
variable "aws_region" {
    description = "The AWS region"
    type        = string
    default     = "us-east-1"
}
variable "instance_type" {
    description = "The instance type for the EC2 instance"
    type        = string
    default     = "t3.micro"
}
variable "ssh_allowed_cidr" {
    description = "The CIDR block allowed for SSH access"
    type        = string
}
variable "public_key" {
    description = "The public key for the EC2 instance"
    type        = string
    sensitive   = true
}
variable "db_username" {
    description = "The username for the RDS database"
    type        = string
}
variable "db_password" {
    description = "The password for the RDS database"
    type        = string
    sensitive   = true
}
