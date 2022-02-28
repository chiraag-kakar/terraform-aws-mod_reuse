variable "instance_tenancy" {
  description = "specify instance tenancy for the vpc"
  type        = string
  default     = "default"
}

variable "vpc_cidr_block" {
  description = "specify cidr block for the vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "specify name for the vpc"
  type        = string
  default     = "my-vpc"
}