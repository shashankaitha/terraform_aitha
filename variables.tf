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
variable "transit_gateway_id" {
  type = string
}
variable "routes" {
  description = "Map of CIDR blocks to transit gateway ID"
  type        = list(string)
  default     = ["10.0.0.0/8", "23.228.0.0/19", "66.111.130.0/24", "66.111.154.0/23"]
}

