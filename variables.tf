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

variable "public_subnet_cidr_block" {
  description = "specify cidr block for subnet"
  type        = string
  default     = "10.0.0.0/24"
}

variable "private_subnet_cidr_block" {
  description = "specify cidr block for subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "destination_cidr_block" {
  description = "specify cidr block for destination"
  type        = string
  default     = "0.0.0.0/0"
}

variable "environment" {
  description = "environemnt where the resources are created. eg test/prod"
  type = string
}

variable "environemnt_config_variable" {
  description = "key value pair containning all configuration for every environment"
  type = map
}