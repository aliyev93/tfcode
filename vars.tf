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