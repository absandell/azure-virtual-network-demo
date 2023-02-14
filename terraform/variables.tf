# Input Variables Block

# Business Division
variable "business_division" {
    description = "Business Division in the large organization this Infrastructure belongs to"
    type = string
    default = "testing"
}

# Environment Variable
variable "environment" {
    description = "Environment variable used as a prefix"
    type = string
    default = "dev"
}

# Azure Resource Group Name
variable "rg_name" {
    description = "Resource Group Name"
    type = string
    default = "rg-default"
}

# Azure Resources Location
variable "rg_location" {
    description = "Resource Group Location"
    type = string
    default = "eastus2"
}

