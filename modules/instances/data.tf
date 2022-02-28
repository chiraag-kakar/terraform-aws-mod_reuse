data "aws_ami" "ubuntu" {

    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

    owners = ["099720109477"]
}

data "aws_subnet" "selected_subnet" {
  id = var.subnet_id
}

data "aws_security_group" "selected_security_group" {
  id = var.vpc_security_group_id
}