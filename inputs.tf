variable "bucket" {
  type        = string
  description = "Name of the S3 bucket to create for state storage"
}

variable "force_destroy" {
  type        = bool
  default     = false
  description = "If set to true, will delete bucket contents on terraform destroy. Default false"
}

variable "dynamodb" {
  type        = string
  description = "Name of the DynamoDB table to store state locks"
}

