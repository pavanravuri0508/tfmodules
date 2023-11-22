resource "azurerm_service_plan" "asp1_m5" {
  name                = var.azurerm_service_plan
  resource_group_name = azurerm_resource_group.rg1_m5.name
  location            = azurerm_resource_group.rg1_m5.location
  os_type             = var.os_type
  sku_name            = "S1"
}
resource "azurerm_service_plan" "asp2_m5" {
  name                = var.azurerm_service_plan
  resource_group_name = azurerm_resource_group.rg2_m5.name
  location            = azurerm_resource_group.rg2_m5.location
  os_type             = var.os_type
  sku_name            = "S1"
}