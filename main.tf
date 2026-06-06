module "vpc" {
  source = "./modules/vpc"

  vpc_cidr = "10.0.0.0/16"
  vpc_name = "three-tier-vpc"

  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.101.0/24", "10.0.102.0/24"]
  availability_zones   = ["ap-south-1a", "ap-south-1b"]
}

module "security_group" {
  source = "./modules/security-group"

  vpc_id       = module.vpc.vpc_id
  project_name = "three-tier"
  my_ip        = var.my_ip
}

module "ec2" {
  source = "./modules/ec2"

  ami_id            = var.ami_id
  instance_type     = "t3.micro"
  subnet_id         = module.vpc.public_subnet_ids[0]
  security_group_id = module.security_group.web_sg_id
  key_name          = var.key_name
  project_name      = "three-tier"
}