location               = "East US"
resource_group_name   = "rg-prod"
vnet_name             = "vnet-prod"
public_subnet_name    = "subnet-public-prod"
private_subnet_name   = "subnet-private-prod"
vnet_address_space    = ["172.0.0.0/16"]
public_subnet_address_prefix  = ["172.0.1.0/24"]
private_subnet_address_prefix = ["172.0.2.0/24"]
tags = {
  env = "prod"
}
#--
nsg_name               = "nsg-web-app-prod"
allow_http_priority    = 100
allow_https_priority   = 110
deny_all_priority      = 200
remote_vnet_id               = "/subscriptions/xxxxxx/resourceGroups/rg-prod-vnet/providers/Microsoft.Network/virtualNetworks/vnet-remote"
route_table_name = "rt-dev"
