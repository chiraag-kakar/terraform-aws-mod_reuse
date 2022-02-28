output "instance_vpc_id" {
  value = aws_vpc.instance_vpc.id
}

output "instance_vpc_cidr_block" {
  value = aws_vpc.instance_vpc.cidr_block
}