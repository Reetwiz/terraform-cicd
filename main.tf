terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.3"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = local.common_tags
  }
}

data "aws_vpc" "existing" {
  id = local.vpc_id
}

data "aws_subnet" "public_subnet_1a" {
  id = local.subnet_id
}

module "app_storage" {
  source = "./modules/s3"

  bucket_name_prefix       = "reetwiz-storage"
  should_enable_versioning = var.s3_versioning_enabled
  tags                     = var.environment_tags
}

module "web_server" {
  source = "./modules/ec2"
  count  = var.instance_count

  instance_name = "reetwiz-instance-${count.index + 1}"
  instance_type = var.instance_type
  ami_id        = var.ami_id
  tags          = var.environment_tags

  subnet_id = data.aws_subnet.public_subnet_1a.id
  vpc_id    = data.aws_vpc.existing.id
}
