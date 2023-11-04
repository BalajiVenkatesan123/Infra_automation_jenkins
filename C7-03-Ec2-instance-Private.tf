// AWS private instance using ec2 module

module "Private-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.17.0"
  depends_on = [ module.vpc]
  

  ami = data.aws_ami.amzlinux2.id
  name = "${local.env}-private-instance"
  instance_type          = var.instance_type
  key_name               = var.key_pair
  monitoring             = false
  vpc_security_group_ids = [module.Private_SG.security_group_id]
  subnet_ids = [module.vpc.private_subnets[0], module.vpc.private_subnets[1]]
  instance_count = var.instance_count
  user_data = file("./web_setup.sh")

  tags = local.common_tags

  



}

