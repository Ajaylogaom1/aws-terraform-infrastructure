output "db_instance_endpoint" {
  description = "RDS Instance Endpoint"
  value       = aws_db_instance.rds-instance.address
}
output "db_instance_id" {
  description = "RDS Instance ID"
  value       = aws_db_instance.rds-instance.id
}
output "db_instance_port" {
  description = "RDS Instance Port"
  value       = aws_db_instance.rds-instance.port
}
output "db_instance_name" {
  description = "RDS Instance Database Name"
  value       = aws_db_instance.rds-instance.db_name
}