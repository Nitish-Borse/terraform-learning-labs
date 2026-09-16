output "workspace" {
  value = terraform.workspace
}

output "instance_type" {
  value = aws_instance.myec2.instance_type
}

output "public_ip" {
  value = aws_instance.myec2.public_ip
}
