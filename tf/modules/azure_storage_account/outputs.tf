output "resource_group_name" {
  description = "The name of the Azure Resource Group"
  value       = azurerm_resource_group.rg.name
}

output "storage_account_name" {
  description = "The name of the Azure Storage Account"
  value       = azurerm_storage_account.storage_account.name
}

output "container_name" {
  description = "The name of the Storage Container"
  value       = azurerm_storage_container.container.name
}

output "blob_name" {
  description = "The name of the Blob"
  value       = azurerm_storage_blob.blob.name
}
