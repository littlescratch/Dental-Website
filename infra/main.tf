resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_static_web_app" "dental_web" {
  name                = var.static_web_app_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = "eastus2"
  sku_tier            = var.sku_tier
  sku_size            = var.sku_size
  tags                = var.tags
}
