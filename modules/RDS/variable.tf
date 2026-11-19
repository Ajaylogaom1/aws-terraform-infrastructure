variable "project_name" {
  description = "this is the project name"
  type        = string
}

variable "vpc_id" {
  description = "this is the vpc id"
  type        = string
}
variable "ec2_security_group_id" {
  description = "this is the ec2 security group id"
  type        = string
}
variable "private_subnet_ids" {
  description = "this is the list of private subnet ids"
  type        = list(string)
}
variable "db_password" {
  description = "this is the database password"
  type        = string
}
variable "db_username" {
  description = "this is the database username"
  type        = string
}