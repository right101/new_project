variable "region" {
  description = "The AWS region where resources will be created"
  type        = string
}
variable "env" {
    type = string
    description = "Indicates the environment"
    default = ""
}
variable "key_name" {
    type = string
    description = "ssh key name"
    default = "bastion_key"
  
}
variable "instance_type" {
    type = string
    description = "instance type"
    default = "t2.large"
  
}
variable "subnet" {
    type = string
    description = "name for my subnet"
    default = "subnet"
}
# variable "Public_rt" {
#     type = string
#     description = "name for my public rt"
#     default = "Public_rt"
# }
# variable "Private_rt" {
#     type = string
#     description = "name for my private rt"
#     default = "Private_rt"
# }
variable "main_igw" {
    type = string
    description = "name for my igw"
    default = "main_igw"
}
variable "main_ngw" {
    type = string
    description = "name for my ngw"
    default = "main_ngw"
}
variable "Public" {
    type = string
    description = "name for my public name"
    default = "Public"
}
variable "Private" {
    type = string
    description = "name for my private name"
    default = "Private"
}

# Here variables start with cider blocks

variable "vpc_cidr_block" {
    type = string
    description = "this is for cidr_block"
    default  = "10.0.0.0/16"
}
variable "cidr_block_rt" {
    type = string
    description = "this is for route table cidr_block"
    default  = "0.0.0.0/0"
}
variable "public_subnet_cidr_blocks" {
    type = list(string)
    description = "List of cidr blocks"
    default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
variable "private_subnet_cidr_blocks" {
    type = list(string)
    description = "List of cidr blocks"
    default  = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
}
variable "name" {
    type = string
    description = "This is name for security group"
    default  = "project_sg"
}
variable "project_ports" {
    type = list(string)
    description = "List of ports"
    default = ["22", "80", "3306", "443"]
}

variable "cidr_blocks" {
    type = string
    description = "this is for cidr block"
    default  = "0.0.0.0/0"
}
variable "protocol" {
    type = string
    description = "this is for protocol"
    default  = "tcp"
}