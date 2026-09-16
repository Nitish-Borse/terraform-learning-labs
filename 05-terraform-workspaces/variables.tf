variable "region_name" {
  type    = string
  default = "us-east-1"
}

variable "ami" {
  type        = string
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  type = map(string)

  default = {
    default = "t3.nano"
    dev     = "t3.micro"
    test    = "t3.small"
    prod    = "t3.medium"
  }
}
