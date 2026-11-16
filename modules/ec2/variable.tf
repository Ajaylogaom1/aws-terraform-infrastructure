variable "project_name" {
  description = "this is the project name"
  type = string
}
variable "public_key" {
  description = "this is the public key"
  type = string
}

variable "instance_type" {
  description = "this is an instance type"
  type = string
}


variable "subnet_id" {
  description = "this is an subnet id"
  type = string
}
variable "security_group_id" {
  description = "this is an security group id"
  type = string
}