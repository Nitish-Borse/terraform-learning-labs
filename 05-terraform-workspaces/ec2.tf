resource "aws_instance" "myec2" {
  ami           = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace, var.instance_type["default"])

  tags = {
    Name        = "terraform-${terraform.workspace}-ec2"
    Environment = terraform.workspace
  }
}
