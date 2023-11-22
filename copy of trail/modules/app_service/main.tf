resource "azurerm_windows_web_app" "webapp" {
  name                = var.webapp
  resource_group_name = azurerm_resource_group.rg1_m5.name
  location            = azurerm_service_plan.rg1_m5.location
  service_plan_id     = azurerm_service_plan.asp1_m5.id

  site_config {}
}

