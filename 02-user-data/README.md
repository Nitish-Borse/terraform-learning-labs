# 02 - User Data

## Objective

Use EC2 `user_data` to automatically configure a web server when the instance launches.

## What this demonstrates

- EC2 provisioning
- Linux bootstrap scripts
- Nginx installation
- Terraform `user_data`
- Automatic application of a startup script

## Run

Copy `terraform.tfvars.example` to `terraform.tfvars`, replace the placeholders, then run:

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

After the instance is ready, open its public IP in a browser.

Destroy the resources after practice:

```bash
terraform destroy
```
