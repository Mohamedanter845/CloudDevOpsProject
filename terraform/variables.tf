variable "aws_region" {
  default = "us-east-1"
}

variable "aws_profile" {
  default = "default"
}
variable "project_name" {}
variable "vpc_cidr_block" {}
variable "public_subnet_cidr" {}
variable "public_subnet_az" {}
variable "private_subnet_cidr" {}
variable "private_subnet_az" {}
variable "instance_type" {}
variable "ami_id" {}
variable "key_name" {}
variable "ami" {
  description = "AMI ID for EC2 instance"
  type        = string
}
