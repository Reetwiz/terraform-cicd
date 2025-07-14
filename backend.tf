terraform {
  backend "s3" {
    bucket       = "reetwiz-terraform-backend-final"
    key          = "terraform/state"
    region       = "us-east-1"
    encrypt      = true
  }
}

#.
#.
#.
#.
#.