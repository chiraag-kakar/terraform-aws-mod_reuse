resource "aws_vpc" "instance_vpc" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = var.instance_tenancy
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
    createdBy = "test-user"
    env       = "dev"
    geography = "apac"
    product   = "testing"
  }
}