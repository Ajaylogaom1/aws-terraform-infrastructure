variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "public_subnet_cidr_block" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "aws_region" {
  description = "The AWS region"
  type        = string
}

#private subnet variables
variable "private_subnet_1_cidr" {
  description = "The CIDR block for the first private subnet"
  type        = string
}

#private2

variable "private_subnet_2_cidr" {
  description = "The CIDR block for the second private subnet"
  type        = string
}


