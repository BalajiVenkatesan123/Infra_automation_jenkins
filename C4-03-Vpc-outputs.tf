output "vpc_id" {
    value = module.vpc.default_vpc_id
  
}

output "vpc_cidr" {
    value = module.vpc.vpc_cidr_block
  
}

output "public_subnet_id" {
    value = module.vpc.public_subnets
  
}

output "private_subnet_id" {
    value = module.vpc.private_subnets
  
}