resource "aws_internet_gateway" "my_vpc_gw" {
  vpc_id = var.vpc_id

  tags = {
    Name = "my_vpc_internet_gateway"
    createdBy = "test-user"
    env       = "dev"
    geography = "apac"
    product   = "testing"
  }
}