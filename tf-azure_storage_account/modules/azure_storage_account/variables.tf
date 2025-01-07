variable "resource_group_name" {
  description = "The name of the Azure resource group"
  type        = string
  default = "dev-rg"
}

variable "location" {
  description = "The Azure region where the resources will be created"
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "The name of the Azure Storage Account"
  type        = string
  default = "dev-sa"
}

variable "account_tier" {
  description = "The performance tier of the storage account"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type for the storage account"
  type        = string
  default     = "LRS"
}

variable "container_name" {
  description = "The name of the storage container"
  type        = string
  default = "dev-container"
}

variable "container_access_type" {
  description = "The access level for the container"
  type        = string
  default     = "private"
}

variable "blob_name" {
  description = "The name of the blob to upload"
  type        = string
  default = "dev-blob"
}

variable "blob_type" {
  description = "The type of blob to create (e.g., Block)"
  type        = string
  default     = "Block"
}

variable "source_file" {
  description = "The local file path to upload to the blob"
  type        = string
}
