variable "instance_name" {
  description = "The name tag for our EC2 instance"
  type        = string
}

variable "instance_type" {
  description = " type of EC2 instance to launch"
  type        = string
  default     = "t2.micro"
}


variable "ami_id" {
  description = "The AMI ID to use for instance"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the instance into."
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC to create the security group in"
  type        = string
}

variable "tags" {
  description = "map of tags to assign to instnace"
  type    = map(string)
  default     = {}
}
