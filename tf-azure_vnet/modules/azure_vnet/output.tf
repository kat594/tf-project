output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.rg.name
}

output "vnet_name" {
  description = "The name of the Virtual Network"
  value       = azurerm_virtual_network.vnet.name
}

output "public_subnet_name" {
  description = "The name of the public subnet"
  value       = azurerm_subnet.public_subnet.name
}

output "private_subnet_name" {
  description = "The name of the private subnet"
  value       = azurerm_subnet.private_subnet.name
}

#--
# output "nsg_name" {
#   description = "The name of the Network Security Group"
#   value       = azurerm_network_security_group.nsg.name
# }

# output "nsg_security_rules" {
#   description = "The security rules associated with the Network Security Group"
#   value = [
#     for rule in azurerm_network_security_group.nsg.security_rule : {
#       name                         = rule.name
#       priority                     = rule.priority
#       direction                    = rule.direction
#       access                       = rule.access
#       protocol                     = rule.protocol
#       source_port_range            = rule.source_port_range
#       destination_port_range       = rule.destination_port_range
#       source_address_prefix        = rule.source_address_prefix
#       destination_address_prefix   = rule.destination_address_prefix
#     }
#   ]
# }