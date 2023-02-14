# Random String Resource
resource "random_string" "myrandom" {
    length = 6
    upper = false
    special = false
    numeric = false
}

# Azure Resource Group
resource "azurerm_resource_group" "rg" {
    name = "${local.resource_name_prefix}-${var.rg_name}-${random_string.myrandom}"
    location = var.rg_location
    tags = local.tags
}