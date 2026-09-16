resource "aws_key_pair" "terraform_key" {
  key_name   = "terraform-learning-key"
  public_key = file(var.public_key_path)
}
