resource "aws_instance" "app_server" {
  ami = var.ami_id == null ? data.aws_ami.ubuntu_ami.image_id : var.ami_id
  instance_type = var.instance_type
  count = var.instance_count
  key_name = "myNewKeyPair"
  
  subnet_id = "${data.aws_subnet.selected_subnet.id}"
  vpc_security_group_ids = ["${data.aws_security_group.selected_security_group.id}"]

  tags = {
    Name = var.instance_name
    createdBy = "test-user"
    env       = "dev"
    geography = "apac"
    product   = "testing"
  }

}
