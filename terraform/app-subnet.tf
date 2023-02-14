# app Subnet
resource "azurerm_subnet" "app_subnet" {
    name                 = "${azurerm_virtual_network.vnet.name}-${var.app_subnet_name}"
    resource_group_name  = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes     = var.app_subnet_address
}

# app NSG
resource "azurerm_network_security_group" "app_subnet_nsg" {
    name                = "${azurerm_subnet.app_subnet.name}-nsg"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
}

# Associate NSG and Subnet
resource "azurerm_subnet_network_security_group_association" "app_subnet_nsg_association" {
    depends_on = [ azurerm_network_security_rule.app_nsg_rule_inbound ] # NSG rules need to be created in order to link
    subnet_id                 = azurerm_subnet.app_subnet.id
    network_security_group_id = azurerm_network_security_group.app_subnet_nsg.id
}

# NSG Inbound Rules [22, 80, 443, 8080]
resource "azurerm_network_security_rule" "app_nsg_rule_inbound" {
    for_each = app_inbound_ports_map
    name = "Rule-Port-${each.value}"
    priority = each.key
    direction = "Inbound"
    access = "Allow"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_range = each.value
    source_address_prefix = "*"
    destination_address_prefix = "*"
    resource_group_name = azurerm_resource_group.rg.name
    network_security_group_name = azurerm_network_security_group.app_subnet_nsg.name
}

# Locals Block for Security Rules
locals {
    app_inbound_ports_map = {
        "130" : "22"
        "100" : "80",
        "110" : "443",
        "120" : "8080"
    }
}