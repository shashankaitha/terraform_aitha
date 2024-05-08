resource "aws_route_table" "terraform-public" {
  vpc_id = aws_vpc.default.id

  tags = {
    Name              = "${var.vpc_name}-PUBLIC-RT"
    Terraform-Managed = "Yes"
  }

}


resource "aws_route" "igw-route" {
  route_table_id         = aws_route_table.terraform-public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.default.id
}

# resource "aws_route" "s3endpoint-route" {
#   destination_prefix_list_id = aws_vpc_endpoint.s3_gateway_endpoint.prefix_list_id
#   vpc_endpoint_id            = aws_vpc_endpoint.s3_gateway_endpoint.id
#   route_table_id             = aws_route_table.terraform-public.id
# }

resource "aws_route" "terraform-public" {
  for_each = toset(var.routes)

  route_table_id         = aws_route_table.terraform-public.id
  destination_cidr_block = each.value
  transit_gateway_id     = var.transit_gateway_id
}

resource "aws_route_table_association" "terraform-public" {
  count          = length(local.new_public_subnet_cidrs)
  subnet_id      = element(aws_subnet.public-subnets.*.id, count.index)
  route_table_id = aws_route_table.terraform-public.id
}

# tags = {
#   Name              = "${var.vpc_name}-MAIN-RT"
#   Terraform-Managed = "Yes"
#   Env               = local.new_environment
#   ProjectID         = local.projid
# }
