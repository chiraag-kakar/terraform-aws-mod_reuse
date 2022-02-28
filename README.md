This module helps in building reusable infrastructure in AWS by aggregating vpc, subnets, route, gateway, instances, security groups with ease.

## Authentication : 

Note : Make sure you have created the following "provider.tf"  and include the following values (If the resources are accessed by assuming role)

```
provider "aws" {
  region     = "ap-southeast-1"
  access_key = "XXXXXXXXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

  assume_role {
    role_arn    = "arn:aws:iam::XXXXXXXXXXXX:role/terraform"
    external_id = "role name"
  }
}
```

## Example Usage :


```
module "vpc" {
  # path to the module directory
  source = "chiraag-kakar/aws-reuse/mod/"

  #arguments optional for the module. default values are provided in module. if you need to provide values, please uncomment vars.tf file
  vpc_cidr_block   = ""
  instance_tenancy = ""
  vpc_name         = ""
}

module "public_subnet" {
  source = "chiraag-kakar/aws-reuse/mod/"

  vpc_id                  = ""
  subnet_cidr_block       = ""
  map_public_ip_on_launch = true
  subent_name             = "public_subnet"
}

module "private_subnet" {
  source = "chiraag-kakar/aws-reuse/mod/t"

  vpc_id                  = ""
  subnet_cidr_block       = ""
  map_public_ip_on_launch = false
  subent_name             = "private_subnet"
}

module "security_group" {
  source = "chiraag-kakar/aws-reuse/mod/"

  vpc_id = ""
}

module "internet_gateway" {
  source = "chiraag-kakar/aws-reuse/mod/"

  vpc_id = ""
}

module "route" {
  source = "chiraag-kakar/aws-reuse/mod/"

  vpc_id              = ""
  public_subnet_id    = ""
  internet_gateway_id = ""
  #destination_cidr_block is optional. default value is provided in module
  # destination_cidr_block = var.destination_cidr_block
}

module "instances" {
  source = "chiraag-kakar/aws-reuse/mod/"

  #arguments required for the module
  instance_type = ""
  ami_id = ""
  instance_name = ""
  instance_count = ""
  subnet_id = ""
  vpc_security_group_id = ""
}

```