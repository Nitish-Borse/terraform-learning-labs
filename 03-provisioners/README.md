# 03 - Provisioners

## Objective

Practice Terraform provisioners and SSH connections by configuring Nginx after an EC2 instance is created.

## Concepts

- `local-exec` provisioner
- `remote-exec` provisioner
- SSH connection block
- `self` reference
- Writing an instance IP to a local file
- Remote Linux commands

## Important

Provisioners are included here for learning. In production, prefer cloud-init/user data or dedicated configuration-management approaches where appropriate.

## Run

Copy `terraform.tfvars.example` to `terraform.tfvars`, replace placeholders, then run:

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

The local provisioner writes the instance IP to `ip.txt`. The remote provisioner installs Nginx and updates the default page.

```bash
terraform destroy
```
