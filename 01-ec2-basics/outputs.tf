output "public_ip" {
  value       = aws_instance.myec2.public_ip
  description = "Public IP address of the EC2 instance"
}

output "instance_state" {
  value       = aws_instance.myec2.instance_state
  description = "Current EC2 instance state"
}
