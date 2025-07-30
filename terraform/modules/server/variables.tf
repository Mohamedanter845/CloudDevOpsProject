variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "subnet_id" {
  description = "The Subnet ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}
variable "ami" {
  description = "AMI ID for EC2 instance"
  type        = string
}
