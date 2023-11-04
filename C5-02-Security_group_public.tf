// Aws security group module

module "Baston_SG" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name = "${local.name}-Baston_sg"
  description = "Baston security group for SSH from anywhere"
  vpc_id = module.vpc.vpc_id

  // Ingress rules
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules = ["ssh-tcp"]

  // Egress rules
  egress_rules = ["all-all"]

  tags = local.common_tags

}