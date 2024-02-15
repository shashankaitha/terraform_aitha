resource "aws_ec2_transit_gateway_vpc_attachment" "tgw_attachment" {
  subnet_ids         = var.tgwsubnet_cidrs
  vpc_id             = aws_vpc.default.id
  transit_gateway_id  = var.transit_gateway_id

}

# TGW_ROUTE TABLE
resource "aws_route_table" "terraform-tgw" {
  vpc_id = aws_vpc.default.id

  tags = {
    Name              = "${var.vpc_name}-TGW-RT"
    Terraform-Managed = "Yes"
  }

}

resource "aws_route_table_association" "terraform-tgw" {
  #count             = 4 # 0 1 2
  count = length(local.new_tgwsubnet_cidrs)
  #Using * is called Splat Syntax
  subnet_id      = element(aws_subnet.tgwsubnet.*.id, count.index)
  route_table_id = aws_route_table.terraform-tgw.id
}
# resource "aws_ec2_transit_gateway_route_table_association" "name" {

# }

# resource "aws_routes" "tgw_routes" {

# }

resource "aws_vpc_endpoint" "s3_gateway_endpoint" {
  vpc_id       = aws_vpc.default
  service_name = "com.amazonaws.us-east-1.s3"
}

resource "aws_route" "terraform-tgw-routes" {
  route_table_id             = aws_route_table.terraform-tgw.id
  vpc_endpoint_id            = aws_vpc_endpoint.s3_gateway_endpoint.id
  destination_prefix_list_id = aws_vpc_endpoint.s3_gateway_endpoint.prefix_list_id

}
