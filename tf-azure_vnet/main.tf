module "vnet" {
  source                  = "./modules/azure_vnet"
  location                  = var.location
  resource_group_name   = var.resource_group_name
  vnet_name               = var.vnet_name
  public_subnet_name      = var.public_subnet_name
  private_subnet_name     = var.private_subnet_name
  vnet_address_space      = var.vnet_address_space
  public_subnet_address_prefix = var.public_subnet_address_prefix
  private_subnet_address_prefix = var.private_subnet_address_prefix
  remote_vnet_id          = var.remote_vnet_id
  tags                = var.tags
}

module "nsg_public" {
  source              = "./modules/azure_nsg"
  nsg_name            = "nsg-public-prod"
  location            = var.location
  resource_group_name   = var.resource_group_name
  tags                = var.tags
}

module "nsg_private" {
  source              = "./modules/azure_nsg"
  nsg_name            = "nsg-private-prod"
  location            = var.location
  resource_group_name   = var.resource_group_name
  tags                = var.tags
}

module "route_table_public" {
  source              = "./modules/azure_route_table"
  route_table_name    = "route-table-public-prod"
  location            = var.location
  resource_group_name   = var.resource_group_name
  tags                = var.tags
}

module "route_table_private" {
  source              = "./modules/azure_route_table"
  route_table_name    = "route-table-private-prod"
  location            = var.location
  resource_group_name   = var.resource_group_name
  tags                = var.tags
}