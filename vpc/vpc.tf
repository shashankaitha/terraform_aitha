resource "aws_vpc" "default" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name              = var.vpc_name
    Owner             = "Ownername"
    Terraform-Managed = "Yes"
  }
}

resource "aws_vpc_ipv4_cidr_block_association" "secondary_cidr" {
  vpc_id     = aws_vpc.default.id
  cidr_block = var.vpc_secondary_cidr
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id

}
