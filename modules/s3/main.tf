resource "random_string" "suffix" {
  length  = 8
  special = false
  upper   = false
}

resource "aws_s3_bucket" "this" {
  bucket = "${var.bucket_name_prefix}-${random_string.suffix.result}"
  tags = merge(
    var.tags,
    {
      Name = "${var.bucket_name_prefix}-${random_string.suffix.result}"
    }
  )
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id
  versioning_configuration {
    status = var.should_enable_versioning ? "Enabled" : "Suspended"
  }
}
