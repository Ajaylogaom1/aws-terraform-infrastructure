variable "vpc_id" {
  description = "this is a vpc_id"
  type = string
}

variable "project_name" {
  description = "this is a project name"
  type = string
}

variable "ssh_allowed_cidr" {
  description = "The CIDR block allowed for SSH access"
  type = string
}
