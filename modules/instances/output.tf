output "app_server_ami" {
  value = data.aws_ami.ubuntu
}
output "app_server_ec2_public_ip" {
  value = aws_instance.app_server[*].public_ip
}

output "app_server_tags" {
  value = aws_instance.app_server[*].tags_all
}