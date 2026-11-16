resource "aws_security_group" "rds-sg" {
  name        = "${var.project_name}-rds-sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id
  
  ingress {
    description = "MYSQL for ec2"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    security_groups = [var.ec2_security_group_id]

  }

   tags = {
    Name = "${var.project_name}-rds-sg"
  }
}

#private subnet ids
resource "aws_db_subnet_group" "rds-subnet-group" {
  name       = "${var.project_name}-rds-subnet-group"
  subnet_ids = var.private_subnet_ids

  tags = {
    Name = "${var.project_name}-rds-subnet-group"
  }
}

#rds instance
resource "aws_db_instance" "rds-instance" {
  identifier           = "${var.project_name}-rds-instance"
  allocated_storage    = 20
  storage_type         = "gp3"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  db_name              = "Rdsdb"
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.mysql8.0"

  skip_final_snapshot  = true
  publicly_accessible  = false
  multi_az = false

  vpc_security_group_ids = [aws_security_group.rds-sg.id]
  db_subnet_group_name   = aws_db_subnet_group.rds-subnet-group.name

  tags = {
    Name = "${var.project_name}-rds-instance"
  }
}


