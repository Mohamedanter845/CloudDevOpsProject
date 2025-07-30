variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
}

variable "public_subnet_az" {
  description = "Availability zone for the public subnet"
  type        = string
}

variable "private_subnet_az" {
  description = "Availability zone for the private subnet"
  type        = string
}

variable "project_name" {
  description = "Name prefix for the resources"
  type        = string
}

