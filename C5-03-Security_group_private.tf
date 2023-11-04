// Aws security group module

module "Private_SG" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name = "${local.name}-Private-sg"
  description = "Private security group for SSH & HTTP from VPC"
  vpc_id = module.vpc.vpc_id

  // Ingress rules
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  ingress_rules = ["ssh-tcp", "http-80-tcp"]

  // Egress rules
  egress_rules = ["all-all"]

  tags = local.common_tags

}