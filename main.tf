module "vpc" {
  # path to the module directory
  source = "./modules/vpc"

  #arguments optional for the module. default values are provided in module. if you need to provide values, please uncomment vars.tf file
  vpc_cidr_block   = var.vpc_cidr_block
  instance_tenancy = var.instance_tenancy
  vpc_name         = var.vpc_name
}

module "public_subnet" {
  source = "./modules/subnet"

  vpc_id                  = module.vpc.instance_vpc_id
  subnet_cidr_block       = var.public_subnet_cidr_block
  map_public_ip_on_launch = true
  subent_name             = "public_subnet"
}

module "private_subnet" {
  source = "./modules/subnet"

  vpc_id                  = module.vpc.instance_vpc_id
  subnet_cidr_block       = var.private_subnet_cidr_block
  map_public_ip_on_launch = false
  subent_name             = "private_subnet"
}

module "security_group" {
  source = "./modules/security_group"

  vpc_id = module.vpc.instance_vpc_id
}

module "internet_gateway" {
  source = "./modules/internet_gateway"

  vpc_id = module.vpc.instance_vpc_id
}

module "route" {
  source = "./modules/route"

  vpc_id              = module.vpc.instance_vpc_id
  public_subnet_id    = module.public_subnet.subnet_id
  internet_gateway_id = module.internet_gateway.my_vpc_internet_gateway_id
  #destination_cidr_block is optional. default value is provided in module
  # destination_cidr_block = var.destination_cidr_block
}

module "instances" {
  source = "./modules/instances"

  #arguments required for the module
  instance_type = local.environment_config["instance_type"]
  ami_id = local.environment_config["ami_id"]
  instance_name = "${var.environment}-instance"
  instance_count = local.environment_config["instance_count"]
  subnet_id = local.environment_config["subnet_id"]
  vpc_security_group_id = local.environment_config["vpc_security_group_id"]
}
  
# local variables
locals {
  environment_config = "${lookup(var.environemnt_config_variable, var.environment)}"
}