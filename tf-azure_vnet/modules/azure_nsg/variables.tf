variable "resource_group_name" {
  description = "The name of the Resource Group"
  type        = string
  default = "dev-rg"
}

variable "tags" {
  description = "The tags to apply to all resources"
  type        = map(string)
  default     = {
    env = "dev"
  }
}

variable "location" {
  description = "The Azure region to create the resources"
  type        = string
  default     = "East US"
}

variable "nsg_name" {
  description = "The name of the Network Security Group"
  type        = string
  default = "nsg-dev"
}
