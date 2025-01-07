
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags = var.tags
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.vnet_address_space
}

resource "azurerm_subnet" "public_subnet" {
  name                 = var.public_subnet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.public_subnet_address_prefix
  service_endpoints = ["Microsoft.AzureActiveDirectory"]
}

resource "azurerm_subnet" "private_subnet" {
  name                 = var.private_subnet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.private_subnet_address_prefix
  service_endpoints = []
}

#--
# resource "azurerm_network_security_group" "nsg" {
#   name                = var.nsg_name
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   security_rule {
#     name                       = "allow-http"
#     priority                   = var.allow_http_priority
#     direction                  = "Inbound"
#     access                     = "Allow"
#     protocol                   = "Tcp"
#     source_port_range          = "*"
#     destination_port_range     = "80"
#     source_address_prefix      = var.source_address_prefix
#     destination_address_prefix = var.destination_address_prefix
#   }

#     security_rule {
#     name                       = "allow-https"
#     priority                   = var.allow_https_priority
#     direction                  = "Inbound"
#     access                     = "Allow"
#     protocol                   = "Tcp"
#     source_port_range          = "*"
#     destination_port_range     = "443"
#     source_address_prefix      = var.source_address_prefix
#     destination_address_prefix = var.destination_address_prefix
#   }

#     security_rule {
#     name                       = "deny-all-other"
#     priority                   = var.deny_all_priority
#     direction                  = "Inbound"
#     access                     = "Deny"
#     protocol                   = "*"
#     source_port_range          = "*"
#     destination_port_range     = "*"
#     source_address_prefix      = var.source_address_prefix
#     destination_address_prefix = var.destination_address_prefix
#   }
# }
#--
# Network Security Group for Public Subnet
# resource "azurerm_network_security_group" "nsg_public" {
#   name                = "${var.vnet_name}-nsg-public"
#   location            = var.location
#   resource_group_name = var.resource_group_name
# }

# # Network Security Group for Private Subnet
# resource "azurerm_network_security_group" "nsg_private" {
#   name                = "${var.vnet_name}-nsg-private"
#   location            = var.location
#   resource_group_name = var.resource_group_name
# }

# # Associate NSG to Public Subnet
# resource "azurerm_subnet_network_security_group_association" "nsg_public_association" {
#   subnet_id                 = azurerm_subnet.public_subnet.id
#   network_security_group_id = azurerm_network_security_group.nsg_public.id
# }

# # Associate NSG to Private Subnet
# resource "azurerm_subnet_network_security_group_association" "nsg_private_association" {
#   subnet_id                 = azurerm_subnet.private_subnet.id
#   network_security_group_id = azurerm_network_security_group.nsg_private.id
# }

# # Route Table for Public Subnet
# resource "azurerm_route_table" "route_table_public" {
#   name                = "${var.vnet_name}-route-table-public"
#   location            = var.location
#   resource_group_name = var.resource_group_name
# }

# # Associate Route Table with Public Subnet
# resource "azurerm_subnet_route_table_association" "route_table_public_association" {
#   subnet_id      = azurerm_subnet.public_subnet.id
#   route_table_id = azurerm_route_table.route_table_public.id
# }

# # Route Table for Private Subnet
# resource "azurerm_route_table" "route_table_private" {
#   name                = "${var.vnet_name}-route-table-private"
#   location            = var.location
#   resource_group_name = var.resource_group_name
# }

# # Associate Route Table with Private Subnet
# resource "azurerm_subnet_route_table_association" "route_table_private_association" {
#   subnet_id      = azurerm_subnet.private_subnet.id
#   route_table_id = azurerm_route_table.route_table_private.id
# }

# # VNet Peering (Example Peering to another VNet)
# resource "azurerm_virtual_network_peering" "vnet_peering" {
#   name                           = "${var.vnet_name}-peering"
#   resource_group_name            = var.resource_group_name
#   virtual_network_name           = azurerm_virtual_network.vnet.name
#   remote_virtual_network_id      = var.remote_vnet_id
#   allow_virtual_network_access  = true
#   allow_forwarded_traffic       = true
#   allow_gateway_transit         = false
#   use_remote_gateways           = false
# }