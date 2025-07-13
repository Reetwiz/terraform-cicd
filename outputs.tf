output "s3_bucket_created" {
  description = "Name of the S3 bucket created"
  value       = module.app_storage.bucket_name
}

output "ec2_instance_details" {
  description = "Details of the EC2 instances created"
  value = [
    for instance in module.web_server : {
      id                = instance.instance_id
      public_ip         = instance.public_ip
      private_ip        = instance.instance_private_ip
      security_group_id = instance.security_group_id
    }
  ]
}

output "deployment_info" {
  description = "Information about the current deployment"
  value = {
    instance_count = var.instance_count
    instance_type  = var.instance_type
    ami_id         = var.ami_id
  }
}
