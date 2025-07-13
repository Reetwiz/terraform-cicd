locals {
  common_tags = {
    Creator   = "reetwizamatya"
    ManagedBy = "Terraform"
    Project   = var.project_name
  }

  vpc_id    = "vpc-0eb2d01c37cc93e40"
  subnet_id = "subnet-0fdfb5252ab10392f"
}
