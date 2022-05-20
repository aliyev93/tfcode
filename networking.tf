module "assign_vpc" {
  source = "./modules/network/vpc"

  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr
}

module "assign_pr_subnet" {
  source               = "./module/network/subnet/private"
  private_subnets_cidr = var.private_subnets_cidr
  availability_zones = var.availability_zones
  public_subnets_cidr = var.public_subnets_cidr
  ig_name = var.ig_name
}

