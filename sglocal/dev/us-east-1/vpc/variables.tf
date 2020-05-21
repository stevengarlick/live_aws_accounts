variable "vpc_name" {
    description = "Name of the VPC"
    type = string
}

variable "vpc_cidr" {
    description = "CIDR range of entire VPC"
    type = string
}

variable "vpc_azs" {
    description = "List of availability zones within the VPC"
    type = List
}

variable "private_subnets" {
    description = "List of cidr ranges for private subnets"
    type = List
}

variable "public_subnets" {
    description = "List of cidr ranges for public subnets"
    type = List
}

variable "default_tags" { 
    type = "map" 
}
