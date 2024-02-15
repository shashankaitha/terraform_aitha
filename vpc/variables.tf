variable "aws_region" { type = string }
variable "vpc_cidr" { type = string }
variable "vpc_name" { type = string }
variable "vpc_secondary_cidr" {
  type = string
}
variable "public_subnet_cidrs" { type = list(any) }
variable "private_subnet_cidrs" { type = list(any) }
variable "azs" { type = list(any) }
variable "projid" { type = string }
variable "tgwsubnet_cidrs" { type = list(any) }
variable "transit_gateway_id" { type = string }



