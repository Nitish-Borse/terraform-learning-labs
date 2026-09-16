output "public_ip" {
  value = aws_instance.myec2.public_ip
}

output "website_url" {
  value = "http://${aws_instance.myec2.public_ip}"
}
