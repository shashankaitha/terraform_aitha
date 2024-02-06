resource "aws_subnet" "tgwsubnet" {
  vpc_id = aws_vpc_ipv4_cidr_block_association.secondary_cidr.vpc_id
  #   cidr_block = "198.18.0.32/28"
  count             = length(local.new_tgwsubnet_cidrs)
  cidr_block        = element(local.new_tgwsubnet_cidrs, count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    Name              = "${var.vpc_name}-tgw-${count.index + 1}"
    Terraform-Managed = "Yes"
  }

}
