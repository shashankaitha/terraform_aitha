resource "aws_route_table" "terraform-private" {
  vpc_id = aws_vpc.default.id

}

resource "aws_route_table_association" "terraform-private" {
  #count             = 4 # 0 1 2
  count = length(local.new_private_subnet_cidrs)
  #Using * is called Splat Syntax
  subnet_id      = element(aws_subnet.private-subnets.*.id, count.index)
  route_table_id = aws_route_table.terraform-private.id
}
