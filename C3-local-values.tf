// Define local values in terraform

locals {
  owner = var.division
  env = var.environment
  name = "${var.division}-${var.environment}"

  common_tags = {
    owners = local.owner
    environment = local.env
    
  }
  
}


