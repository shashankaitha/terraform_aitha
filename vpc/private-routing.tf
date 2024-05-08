resource "aws_route_table" "terraform-private" {
  vpc_id = aws_vpc.default.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.transit_gateway_id
  }

  # route {
  #   destination_prefix_list_id = aws_vpc_endpoint.s3_gateway_endpoint.prefix_list_id
  #   vpc_endpoint_id            = aws_vpc_endpoint.s3_gateway_endpoint.id
  # }


  tags = {
    Name              = "${var.vpc_name}-Private-RT"
    Terraform-Managed = "Yes"
  }

}

resource "aws_route_table_association" "terraform-private" {
  #count             = 4 # 0 1 2
  count = length(local.new_private_subnet_cidrs)
  #Using * is called Splat Syntax
  subnet_id      = element(aws_subnet.private-subnets.*.id, count.index)
  route_table_id = aws_route_table.terraform-private.id

}

