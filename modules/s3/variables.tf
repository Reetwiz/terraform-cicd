variable "bucket_name_prefix" {
  description = ""
  type        = string
}

variable "should_enable_versioning" {
  description = "true then versioning will be enabled on the S3 "
  type        = bool
  default     = false
}

variable "tags" {
  description = "a map of tags to assign to the S3 bucket."
  type        = map(string)
  default     = {}
}


variable "unused_demo_variable" { # This new variable is intentionally unused
  description = "This variable is intentionally unused for TFLint demo"
  type        = string
  default     = "tflint-test"
}