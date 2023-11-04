
// AWS Ec2 instance_type
variable "instance_type" {
    description = "Instance type for baston and private instance"
    type = string
    default = "t2.micro"  
}

// AWS Ec2 instance_keypair
variable "key_pair" {
    description = "Instance key_pair for baston and private instance"
    type = string
    default = "terra_key"  
}

// AWS Ec2 instance_count
variable "instance_count" {
    description = "Instance count for private instance"
    type = number
    default = 2
}
