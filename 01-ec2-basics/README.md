# 01 - EC2 Basics

## Objective

Create an AWS EC2 instance using Terraform and learn the basic Terraform resource workflow.

## Concepts

- AWS provider
- `aws_instance`
- Variables
- Outputs
- AWS key pair
- Security group
- Terraform resource references

## Files

- `ec2.tf` - EC2 resource
- `key-pair.tf` - imports an existing public SSH key into AWS
- `security-group.tf` - SSH and HTTP access
- `variables.tf` - configurable values
- `outputs.tf` - instance IP and state
- `terraform-provider.tf` - provider configuration

## Run

1. Copy `terraform.tfvars.example` to `terraform.tfvars`.
2. Replace the placeholder values.
3. Make sure the referenced public key already exists on your machine.
4. Run `terraform init`, `terraform fmt`, `terraform validate`, `terraform plan`, and `terraform apply`.
5. Use the output public IP to test the instance.

```bash
terraform output
```

Clean up after practice:

```bash
terraform destroy
```
