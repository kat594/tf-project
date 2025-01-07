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

variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
  default = "dev_vnet"
}

variable "public_subnet_name" {
  description = "The name of the public Subnet"
  type        = string
  default = "dev-pubsubnet"
}

variable "private_subnet_name" {
  description = "The name of the private Subnet"
  type        = string
  default = "dev-pvtsubnet"
}

variable "vnet_address_space" {
  description = "The address space of the Virtual Network"
  type        = list(string)
  default = ["172.0.0.0/16"]
}

variable "public_subnet_address_prefix" {
  description = "The address prefix for the public subnet"
  type        = list(string)
  default = ["172.0.1.0/24"]
}

variable "private_subnet_address_prefix" {
  description = "The address prefix for the private subnet"
  type        = list(string)
  default = ["172.0.2.0/24"]
}

#--
variable "nsg_name" {
  description = "The name of the Network Security Group"
  type        = string
  default     = "nsg-dev"
}

variable "source_address_prefix" {
  description = "The source address prefix for NSG rules"
  type        = string
  default     = "*"
}

variable "destination_address_prefix" {
  description = "The destination address prefix for NSG rules"
  type        = string
  default     = "*"
}

variable "allow_http_priority" {
  description = "The priority for the HTTP rule"
  type        = number
  default     = 100
}

variable "allow_https_priority" {
  description = "The priority for the HTTPS rule"
  type        = number
  default     = 110
}

variable "deny_all_priority" {
  description = "The priority for the deny-all rule"
  type        = number
  default     = 200
}
#--
variable "remote_vnet_id" {
  description = "The ID of the remote VNet to create peering"
  type        = string
}
#--