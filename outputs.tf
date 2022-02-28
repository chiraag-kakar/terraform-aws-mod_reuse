output "vpc_security_group_id" {
  value = module.security_group.vpc_security_group_id
}

output "public_subnet_id" {
  value = module.public_subnet.subnet_id
}

output "private_subnet_id" {
  value = module.private_subnet.subnet_id
}

output "environemnt_config_variable" {
  value = var.environemnt_config_variable
}