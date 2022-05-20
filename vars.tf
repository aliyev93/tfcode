//Project 

variable "aws_region" {
    description = "AWS Region where assign resources will be created"
}


//Networkin
variable "vpc_name" {
  description = "Name of VPC"
}

variable "vpc_cidr" {
  description = "CIDR for VPC"
}

variable "private_subnets_cidr" {
    type = list
    description = "List of private subnet CIDR"
}

variable "availability_zones" {
  type = list
  description = "List of AZ"
}