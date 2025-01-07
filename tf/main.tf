module "azure_storage" {
  source = "./modules/azure_storage_account"  # Adjust the path based on where you place the module
  
  resource_group_name   = var.resource_group_name
  location              = var.location
  storage_account_name  = var.storage_account_name
  container_name        = var.container_name
  blob_name             = var.blob_name
  source_file           = var.source_file
}
