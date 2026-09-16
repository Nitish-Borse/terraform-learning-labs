variable "region_name" {
  type    = string
  default = "us-east-1"
}

variable "ami" {
  type        = string
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "vpc_security_group_id" {
  type        = string
  description = "Existing security group ID allowing HTTP"
}
