module "vpc" {
  source = "./modules/vpc"

  project_name             = var.project_name
  vpc_cidr_block           = var.vpc_cidr_block
  public_subnet_cidr_block = var.public_subnet_cidr
  private_subnet_1_cidr    = var.private_subnet_1_cidr
  private_subnet_2_cidr    = var.private_subnet_2_cidr
  aws_region               = var.aws_region
}

#security group
module "security_group" {
  source = "./modules/security_group"

  project_name = var.project_name
  vpc_id       = module.vpc.vpc_id

}

#ec2 instance

module "ec2" {
  source = "./modules/ec2"

  project_name      = var.project_name
  instance_type     = var.instance_type
  security_group_id = module.security_group.security_group_id
  subnet_id         = module.vpc.public_subnet_id
  public_key        = var.public_key
}

#rds instance
module "rds" {
  source = "./modules/RDS"

  project_name          = var.project_name
  vpc_id                = module.vpc.vpc_id
  ec2_security_group_id = module.security_group.security_group_id
  private_subnet_ids    = module.vpc.private_subnet_ids
  db_username           = var.db_username
  db_password           = var.db_password
}


