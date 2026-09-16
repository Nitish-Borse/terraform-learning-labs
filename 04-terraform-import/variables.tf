variable "region_name" {
  type    = string
  default = "us-east-1"
}

variable "bucket_name" {
  type        = string
  description = "Name of the existing S3 bucket to import"
}
