# Virtual Network, Subnets, and Subnet NSGs

# Virtual Network
variable "vnet_name" {
    description = "Virtual Network Name"
    type        = string
    default     = "vnet-default"
}

# VNet Address Space
variable "vnet_address_space" {
    description = "Virtual Network Address Space"
    type        = list(string)
    default     = ["10.0.0.0/16"]
}

# Web Subnet
variable "web_subnet_name"{
    description = "Virtual Netowrk Web Subnet Name"
    type        = string
    default     = "web-subnet"
}

# Web Subnet Address
variable "web_subnet_address" {
    description = "Virtual Network Web Subnet Address Space"
    type        = list(string)
    default     = ["10.0.1.0/24"]
}

# Bastion Subnet
variable "bastion_subnet_name" {
    description = "Virtual Network Bastion Subnet Name"
    type        = string
    default     = "bastion-subnet"
}

# Bastion Subnet Address
variable "bastion_subnet_address" {
    description = "Virtual Network Bastion Subnet Address Space"
    type        = list(string)
    default     = ["10.0.100.0/24"]
}

# App Subnet
variable "app_subnet_name" {
    description = "Virtual Network App Subnet Name"
    type        = string
    default     = "app-subnet"
}

# App Subnet Address
variable "app_subnet_address" {
    description = "Virtual Network App Subnet Address Space"
    type        = list(string)
    default     = ["10.0.11.0/24"]
}

# Database Subnet
variable "db_subnet_name" {
    description = "Virtual Network Database Subnet Name"
    type        = string
    default     = "db-subnet"
}

# Database Subnet Address
variable "db_subnet_address" {
    description = "Virtual Network Database Subnet Address Space"
    type        = list(string)
    default     = ["10.0.21.0/24"]
}