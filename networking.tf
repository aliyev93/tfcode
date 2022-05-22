module "assign_vpc" {
  source = "./modules/network/vpc"

  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr
}

module "assign_pr_subnet" {
  source               = "./modules/network/subnet/private"
  private_subnets_cidr = var.private_subnets_cidr
  availability_zones   = var.availability_zones
  vpc_id               = module.assign_vpc.vpc_id
}

module "assign_pb_subnet" {
  source              = "./modules/network/subnet/public"
  public_subnets_cidr = var.public_subnets_cidr
  availability_zones  = var.availability_zones
  vpc_id              = module.assign_vpc.vpc_id.id
}
