resource "azurerm_resource_group" "rg1_m5" {
  name     = var.rg1
  location = "east us"
}
resource "azurerm_resource_group" "rg2_m5" {
  name     = var.rg2
  location = "east us"
}
resource "azurerm_resource_group" "rg3_m5" {
  name     = var.rg3
  location = "east us"
}