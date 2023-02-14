# azure-virtual-network-demo

## 4-Tier Azure Virtual Network
1. Azure Virtual Network
2. WebTier Subnet + WebTier Network Security Group (Ports 80, 443)
3. AppTier Subnet + AppTier Network Security Group (Ports 8080, 80, 443)
4. DBTier Subnet + DBTier Network Security Group  (Ports 3306, 1433, 5432)
5. Bastion Subnet + Bastion Network Security Group (Ports 80, 3389)

### Azure Resources created
1. azurerm_resource_group
2. azurerm_virtual_network
3. azurerm_subnet
4. azurerm_network_security_group
5. azurerm_subnet_network_security_group_association
6. azurerm_network_security_rule


![vnet-nsg-diagram](https://user-images.githubusercontent.com/58280054/218884055-8eeeffe7-afa3-45e4-b07b-819697a3a505.png)
