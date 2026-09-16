# 05 - Terraform Workspaces

## Objective

Use Terraform workspaces to maintain separate state for different environments and select an EC2 instance type based on the active workspace.

## Concepts

- Terraform workspaces
- `terraform.workspace`
- `lookup()`
- Environment-specific values
- Separate Terraform state per workspace

## Example

Create and select a development workspace:

```bash
terraform workspace new dev
terraform workspace select dev
terraform plan
```

Create a test workspace:

```bash
terraform workspace new test
terraform workspace select test
terraform plan
```

The example maps:

```text
default -> t3.nano
dev     -> t3.micro
test    -> t3.small
prod    -> t3.medium
```

List workspaces:

```bash
terraform workspace list
```

Destroy resources in the selected workspace when finished:

```bash
terraform destroy
```
