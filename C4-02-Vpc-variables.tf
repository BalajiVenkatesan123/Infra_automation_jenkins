variable "vpc_cidr" {
    description = "CIDR for custom vpc"
    type = string
    default = "10.0.0.0/16"
}

variable "availability_zones" {
    description = "Availability zone for subnet creation"
    type = list(string)
    default = [ "ap-south-1a", "ap-south-1b" ]
}

variable "public_cidr" {
    description = "CIDR for public subnets"
    type = list(string)
    default = [ "10.0.1.0/24" ] 
}

variable "private_cidr" {
    description = "CIDR for private subnets"
    type = list(string)
    default = [ "10.0.10.0/24", "10.0.11.0/24" ] 
}

variable "nat_gateway" {
    description = "enable nat gateway for private subnets"
    type = bool
    default = true
}

variable "single_nat_gateway" {
    description = "enable single nat gateway for private subnets"
    type = bool
    default = true 
}