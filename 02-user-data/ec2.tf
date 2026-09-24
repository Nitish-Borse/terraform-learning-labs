resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.vpc_security_group_id]

  user_data = <<-EOF
  #!/bin/bash
  apt-get update -y
  apt-get install -y nginx
  systemctl enable nginx
  systemctl start nginx
  echo "Hello from Terraform User Data" > /var/www/html/index.html
EOF
  tags = {
    Name = "terraform-user-data-web"
  }
}
