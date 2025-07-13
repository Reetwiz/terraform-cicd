output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.this.id
}

output "public_ip" {
  description = "public ip address of the ec2 instance"
  value       = aws_instance.this.public_ip
}

output "instance_private_ip" {
  description = " private ip of the ec2 instance"
  value       = aws_instance.this.private_ip
}

output "security_group_id" {
  description = "ID of the security group created for the instance"
  value       = aws_security_group.instance_sg.id
}
