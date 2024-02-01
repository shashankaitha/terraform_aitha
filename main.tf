module "vpc" {
    source = "./vpc"
    aws_region = "us-east-1"
    vpc_cidr   = "10.37.0.0/16"
    vpc_name   = "Project_VPC"
    projid     = "kelly"
    # key_name             = "Laptopkey"
    public_subnet_cidrs = ["10.37.1.0/24", "10.37.2.0/24"]
    # public_subnet_cidrs = ["10.37.1.0/24", "10.37.2.0/24", "10.37.3.0/24", "10.37.4.0/24", "10.37.5.0/24", "10.37.6.0/24"]#List
    # private_subnet_cidrs = ["10.37.10.0/24", "10.37.20.0/24", "10.37.30.0/24", "10.37.10.0/24", "10.37.20.0/24", "10.37.30.0/24"]
    private_subnet_cidrs = ["10.37.10.0/24", "10.37.20.0/24"]                       #List
    azs                  = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d"] #List
    # environment          = "production"

}