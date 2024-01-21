# Overview

This module creates a terraform backend in AWS S3 and dyanamo DB. It takes a
bucket name and a dynamodb table name, and creates the proper resources.

An optional input `force_destroy` can be toggled to true to enable  deleting data
from the bucket when destroying it.

## Requirements

| Name | Version |
|------|---------|
| aws | >= 5.33.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 5.33.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |
| [aws_s3_bucket.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| bucket | Name of the S3 bucket to create for state storage | `string` | n/a | yes |
| dynamodb | Name of the DynamoDB table to store state locks | `string` | n/a | yes |
| force\_destroy | If set to true, will delete bucket contents on terraform destroy. Default false | `bool` | `false` | no |

## Outputs

No outputs.