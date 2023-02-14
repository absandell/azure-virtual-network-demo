# Virtual Network Outputs

# Virtual Network Name
output "virtual_network_name" {
    description = "Virtual Network Name"
    value = azurerm_virtual_network.vnet.name
}

output "virtual_network_id" {
    description = "Virtual Network ID"
    value = azurerm_virtual_network.vnet.id
}

# Network Security Outputs

# Web Subnet NSG Name
output "web_subnet_nsg_name" {
    description = "Web Subnet NSG Name"
    value = azurerm_network_security_group.web_subnet_nsg.name
}

# Web Subnet NSG ID
output "web_subnet_nsg_id" {
    description = "Web Subnet NSG ID"
    value = azurerm_network_security_group.web_subnet_nsg.id
}

# App Subnet NSG Name
output "app_subnet_nsg_name" {
    description = "App Subnet NSG Name"
    value = azurerm_network_security_group.app_subnet_nsg.name
}

# App Subnet NSG ID
output "app_subnet_nsg_id" {
    description = "App Subnet NSG ID"
    value = azurerm_network_security_group.app_subnet_nsg.id
}

# Database Subnet NSG Name
output "db_subnet_nsg_name" {
    description = "Database Subnet NSG Name"
    value = azurerm_network_security_group.db_subnet_nsg.name
}

# Database Subnet NSG ID
output "db_subnet_nsg_id" {
    description = "Database Subnet NSG ID"
    value = azurerm_network_security_group.db_subnet_nsg.id
}

# Bastion Subnet NSG Name
output "bastion_subnet_nsg_name" {
    description = "Bastion Subnet NSG Name"
    value = azurerm_network_security_group.bastion_subnet_nsg.name
}

# Bastion Subnet NSG ID
output "bastion_subnet_nsg_id" {
    description = "Bastion Subnet NSG ID"
    value = azurerm_network_security_group.bastion_subnet_nsg.id
}