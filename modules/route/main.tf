# create route table
resource "aws_route_table" "my_vpc_route_table" {
  vpc_id = var.vpc_id
  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = var.internet_gateway_id
  }
  tags = {
    Name = "my_vpc_route_table"
    createdBy = "test-user"
    env       = "dev"
    geography = "apac"
    product   = "testing"
  }
}

# terraform aws associate public subnet with route table
resource "aws_route_table_association" "my_vpc_association" {
  subnet_id      = var.public_subnet_id
  route_table_id = aws_route_table.my_vpc_route_table.id
}