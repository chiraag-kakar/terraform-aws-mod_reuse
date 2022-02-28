variable "vpc_id" {
  description = "specify id of the vpc"
  type        = string
}

variable "subnet_cidr_block" {
  description = "specify cidr block for subnet"
  type        = string
}

variable "map_public_ip_on_launch" {
  description = "specify yes/no based on the requirement of public ip on launch"
  type        = string
}

variable "subnet_name" {
  description = "specify name of the subnet"
  type        = string
}