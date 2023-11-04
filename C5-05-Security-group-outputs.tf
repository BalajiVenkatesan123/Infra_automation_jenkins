// Outputs for baston and private security groups


// public baston SG id
output "baston_security_group_id" {
    value = module.Baston_SG.security_group_id
  
}

// private SG id
output "private_security_group_id" {
    value = module.Private_SG.security_group_id
  
}