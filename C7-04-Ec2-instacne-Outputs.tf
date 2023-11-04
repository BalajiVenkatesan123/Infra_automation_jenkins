// Ec2-Baston and Private instance outputs //

// Baston host public ip
output "baston_public_ip" {
    description = "The public IP address assigned to the instance"
    value = module.Public-baston-instance.public_ip
  
}

// Baston host Id
output "baston_Id" {
    description = "The ID of the instance"
    value = module.Public-baston-instance.id
}


// Private instance private ip
output "private_ip" {
    description = "The private IP address assigned to the instance"
    value = module.Private-instance.private_ip
  
}

// Private instance ids
output "Private_instance_id" {
    description = "The ID of the instance"
    value = module.Private-instance.id

}

