variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "The name of the project, used as a prefix for resources."
  type        = string
  default     = "reetwiz"
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 3
}

variable "instance_type" {
  description = "Instance type for EC2 instances"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
  default     = "ami-05ffe3c48a9991133"
}

variable "environment_tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    Environment = "Default"
    CostCenter  = "default-team"
    Creator     = "reetwizamatya"
  }
}

variable "s3_versioning_enabled" {
  description = "Enable or disable S3 bucket versioning"
  type        = bool
  default     = false
}
