resource "aws_instance" "myec2" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.terraform_key.key_name

  tags = {
    Name = "terraform-ec2"
  }

  vpc_security_group_ids = [aws_security_group.my_sg.id]
}
