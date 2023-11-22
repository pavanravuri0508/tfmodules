resource "azurerm_resource_group" "rg" {
    name     = var.pavan.rg1
    location = var.pavan.location1
}
module "appservice" {
source = "./modules/app_service"
webapp = var.pavan.webapp1
base_name = var.pavan.rg1
}