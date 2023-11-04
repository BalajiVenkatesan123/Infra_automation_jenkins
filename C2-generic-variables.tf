// Aws region
variable "aws_region" {
    description = "Region in with the resource is going to created"
    type = string
    default = "ap-south-1"
  
}

// Environment variable
variable "environment" {
    description = "variable for specific environment"
    type = string
    default = "dev"
  
}


// Business Division
variable "division" {
    description = "Resource division"
    type = string
    default = "Admin"
  
}