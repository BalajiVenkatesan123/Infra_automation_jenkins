// AWS application load blancer using ALB module

module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "8.7.0"

  // ALB defaults configration
  name = "${local.name}-alb"

  load_balancer_type = "application"

  vpc_id             = module.vpc.vpc_id
  subnets            = [module.vpc.public_subnets[0]]
  security_groups    = [module.alb_SG.security_group_id]


  // Http listners 
  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

  // target group for listerners
   target_groups = [
    {
      name_prefix      = "app1"
      backend_protocol = "HTTP"
      backend_port     = 80
      target_type      = "instance"
      targets = {
        app1_vm1 = {
          target_id = module.Private-instance.id[0]
          port = 80
        }
        app1_vm2 = {
          target_id = module.Private-instance.id[1]
          port = 80
        }
      }
    }
  ]

}


