# Terraform Learning Labs

Hands-on Terraform labs for learning **Infrastructure as Code (IaC)** with AWS.

These labs were created while learning Terraform and focus on practical concepts that are useful for AWS Cloud and DevOps roles.

## Labs

| Lab | Topics |
|---|---|
| [01 - EC2 Basics](./01-ec2-basics) | EC2, variables, outputs, key pairs, security groups |
| [02 - User Data](./02-user-data) | EC2 bootstrap, Nginx, `user_data` |
| [03 - Provisioners](./03-provisioners) | `local-exec`, `remote-exec`, SSH connection |
| [04 - Terraform Import](./04-terraform-import) | Import an existing S3 bucket into Terraform |
| [05 - Terraform Workspaces](./05-terraform-workspaces) | Workspaces, `terraform.workspace`, environment-specific instance types |

## Prerequisites

- AWS account
- AWS CLI configured with credentials
- Terraform installed
- An existing AWS VPC for the EC2 labs
- An SSH key pair for the provisioner lab

## Important

Do not commit AWS credentials, private SSH keys, Terraform state files, or local `terraform.tfvars` files. Use the provided `terraform.tfvars.example` files as templates.

## Typical workflow

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

Destroy test resources when finished:

```bash
terraform destroy
```

> These repositories are learning labs. Some examples, especially provisioners, are included to demonstrate Terraform features and are not intended as a recommendation for production configuration management.
