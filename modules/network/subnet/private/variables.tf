variable "private_subnets_cidr" {
  type        = list
  description = "CIDR block for subnet ex: 10.0.0.0/25"
}
variable "availability_zones" {
    type = list
  description = "List of AZ"
}

variable "vpc_id" {
    type = string
    description = "VPC ID"
}