// AWS Baston or Public instance using ec2 module

module "Public-baston-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.17.0"

  ami = data.aws_ami.amzlinux2.id
  name = "${local.env}-baston-instance"
  instance_type          = var.instance_type
  key_name               = var.key_pair
  monitoring             = false
  vpc_security_group_ids = [module.Baston_SG.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]
  associate_public_ip_address = true

  tags = local.common_tags
  

}

