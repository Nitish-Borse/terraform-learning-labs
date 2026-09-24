resource "aws_instance" "myec2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.terraform_key.key_name
  vpc_security_group_ids = [var.vpc_security_group_id]

  tags = {
    Name = "terraform-provisioner-ec2"
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > ip.txt"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update -y",
      "sudo apt-get install -y nginx",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx",
      "echo 'Hello From Terraform Remote-Exec' | sudo tee /var/www/html/index.html"
    ]
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    host        = self.public_ip
    private_key = file(var.private_key_path)
  }
}
