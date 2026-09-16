variable "region_name" {
  type    = string
  default = "us-east-1"
}

variable "ami" {
  type        = string
  description = "AMI ID for an Ubuntu EC2 instance"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "vpc_security_group_id" {
  type        = string
  description = "Existing security group ID allowing SSH and HTTP"
}

variable "private_key_path" {
  type        = string
  description = "Path to the SSH private key used to connect to the instance"
}
