aws_region = "us-east-1"
vpc_cidr   = "10.37.0.0/16"
vpc_name   = "Project_VPC"
projid     = "kelly"
# key_name             = "Laptopkey"
public_subnet_cidrs = ["10.37.1.0/24", "10.37.2.0/24", "10.37.3.0/24", "10.37.4.0/24", "10.37.5.0/24", "10.37.6.0/24"] #List
# private_subnet_cidrs = ["10.37.10.0/24", "10.37.20.0/24", "10.37.30.0/24", "10.37.10.0/24", "10.37.20.0/24", "10.37.30.0/24"]
private_subnet_cidrs = ["10.37.10.0/24", "10.37.20.0/24", "10.37.30.0/24"]      #List
azs                  = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d"] #List
environment          = "production"
# instance_type = {
#   development = "t2.micro"
#   testing     = "t2.small"
#   production  = "t2.micro"
# }
# amis = {
#   us-east-1 = "ami-0261755bbcb8c4a84" # Canonical, Ubuntu, 20.04 LTS, amd64 focal image
#   us-east-2 = "ami-0430580de6244e02e" # Canonical, Ubuntu, 20.04 LTS, amd64 focal image
# }
# projid    = "PHOENIX-123"
# imagename = "ami-0149b2da6ceec4bb0"
