// Security Group For Public load balancer
module "alb_SG" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name = "${local.name}-alb-sg"
  description = "Loadbalancer security group for HTTP from everywhere"
  vpc_id = module.vpc.vpc_id

  // Ingress rules 
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules = ["http-80-tcp" ]  

  // Egress rules
  egress_rules = ["all-all"]

  

}