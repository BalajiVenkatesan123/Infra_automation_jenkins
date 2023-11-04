// Aws Vpc module

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"

  name = "${local.name}-vpc"
  cidr = var.vpc_cidr
  azs = var.availability_zones
  default_vpc_enable_dns_hostnames = true
  default_vpc_enable_dns_support = true

  // public subnet and its config
  public_subnets = var.public_cidr
  public_subnet_tags = {
    Name = "${local.name}-public_subnet"
  }

  // private subnet and its config
  private_subnets = var.private_cidr
  enable_nat_gateway = var.nat_gateway
  single_nat_gateway = var.single_nat_gateway
  private_subnet_tags = {
    Name = "${local.name}-private_subnet"
  }

 // overall resourse tags
 tags = local.common_tags

}