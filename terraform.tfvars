aws_region           = "us-east-1"
vpc_cidr             = "10.37.0.0/16"
vpc_name             = "CloudOPSPOC-US-VPC"
projid               = "kelly"
vpc_secondary_cidr   = "198.18.0.0/16"
tgwsubnet_cidrs      = ["198.18.0.32/28", "198.18.0.0/28"]
public_subnet_cidrs  = ["10.37.1.0/24", "10.37.2.0/24"]
private_subnet_cidrs = ["10.37.10.0/24", "10.37.20.0/24"]
azs                  = ["us-east-1a", "us-east-1b", "us-east-1c"]
transit_gateway_id   = "tgw-343sadda04"

