module "vpc" {
  source               = "./vpc"
  aws_region           = var.aws_region
  vpc_cidr             = var.vpc_cidr
  vpc_name             = var.vpc_name
  vpc_secondary_cidr   = var.vpc_secondary_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                  = var.azs
  projid               = var.projid

}
