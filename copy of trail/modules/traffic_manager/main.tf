resource "azurerm_traffic_manager_profile" "profile" {
  name                   = var.azurerm_traffic_manager_profile_name
  resource_group_name    = azurerm_resource_group.rg.name
  traffic_routing_method = "Performance"
  dns_config {
    relative_name = var.azurerm_traffic_manager_profile_dns_config_relative_name
    ttl           = 30
  }

  monitor_config {
    protocol                    = "HTTPS"
    port                        = 443
    path                        = "/"
    expected_status_code_ranges = ["200-202", "301-302"]
  }
}

resource "azurerm_traffic_manager_external_endpoint" "endpoint1" {
  profile_id        = azurerm_traffic_manager_profile.profile.id
  name              = var.endpoint1
  target            = var.app1
  endpoint_location = "eastus"
  weight            = 50
}

resource "azurerm_traffic_manager_external_endpoint" "endpoint2" {
  profile_id        = azurerm_traffic_manager_profile.profile.id
  name              = var.endpoint2
  target            = var.app2
  endpoint_location = "westus"
  weight            = 50
}