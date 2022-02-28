variable "vpc_id" {
  description = "specify id of the vpc"
  type        = string
}

variable "public_subnet_id" {
  description = "specify id of the public subnet"
  type        = string
}

variable "destination_cidr_block" {
  description = "specify cidr block for destination"
  type        = string
  default     = "0.0.0.0/0"
}

variable "internet_gateway_id" {
  description = "specify id of internet gateway"
  type        = string
}