output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "Public Subnet ID"
  value       = aws_subnet.public.id
}

output "private_subnet_id" {
  description = "Private Subnet ID"
  value       = aws_subnet.private.id
}

output "private_subnet_2_id" {
  description = "Private Subnet 2 ID"
  value       = aws_subnet.private_2.id
}
output "private_subnet_ids" {
  description = "Both private subnet IDs for RDS"
  value = [
    aws_subnet.private.id,
    aws_subnet.private_2.id
  ]
}