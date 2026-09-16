# 04 - Terraform Import

## Objective

Learn how to bring an existing AWS resource under Terraform management.

This lab uses an existing S3 bucket.

## Concepts

- Terraform import
- Resource address
- Existing AWS resources
- Terraform state
- `terraform plan` after import

## Example workflow

Create or identify an existing bucket, then define the corresponding Terraform resource in `s3-import.tf`.

Initialize Terraform:

```bash
terraform init
```

Import the bucket:

```bash
terraform import aws_s3_bucket.bucket YOUR_BUCKET_NAME
```

Review the state and configuration:

```bash
terraform plan
terraform state list
```

> The bucket must already exist in the AWS account. Replace the placeholder bucket name with your own bucket.
