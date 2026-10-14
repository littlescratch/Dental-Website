variable "resource_group_name" {
  type        = string
  description = "The name of the Azure Resource Group."
  default     = "rg-dental-web-prod"
}

variable "location" {
  type        = string
  description = "The Azure region where resources will be created."
  default     = "uksouth"
}

variable "static_web_app_name" {
  type        = string
  description = "The name of the Azure Static Web App resource."
  default     = "swa-dental-web-prod"
}

variable "sku_tier" {
  type        = string
  description = "The SKU tier for the Azure Static Web App (Free or Standard)."
  default     = "Free"
}

variable "sku_size" {
  type        = string
  description = "The SKU size for the Azure Static Web App (Free or Standard)."
  default     = "Free"
}

variable "tags" {
  type        = map(string)
  description = "Resource tags to apply to all provisioned infrastructure."
  default = {
    Project     = "Dental-Website"
    Environment = "Production"
    ManagedBy   = "Terraform"
  }
}
