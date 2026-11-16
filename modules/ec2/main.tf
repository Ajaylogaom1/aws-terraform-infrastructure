#ami_id

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# key generation
resource "aws_key_pair" "ec2_key" {
  key_name   = "${var.project_name}-key"
  public_key = var.public_key

   tags = {
    Name = "${var.project_name}-key"
  }
}

#aws instance
resource "aws_instance" "ec2_instance" {
  ami           = data.aws_ami.amazon_linux.id
  key_name     = aws_key_pair.ec2_key.key_name
  instance_type = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  subnet_id = var.subnet_id
  associate_public_ip_address = true

  root_block_device {
    volume_size = 8
    volume_type = "gp3"
    encrypted   = true
  }


  tags = {
    Name = "${var.project_name}-instance"
  }
}