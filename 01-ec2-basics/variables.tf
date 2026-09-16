variable "region_name" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "ami" {
  type        = string
  description = "AMI ID for the EC2 instance"
}

variable "vpc_id" {
  type        = string
  description = "Existing VPC ID"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "public_key_path" {
  type        = string
  description = "Path to an existing SSH public key"
}
