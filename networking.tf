module "assign_vpc" {
    source = "./modules/network/vpc"
    
    vpc_name = var.vpc_name
    vpc_cidr = var.vpc_cidr
}