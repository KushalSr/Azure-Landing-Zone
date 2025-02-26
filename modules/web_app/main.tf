resource "azurerm_service_plan" "app_plan" {
  name                = "${var.web_app_name}-plan"
  location           = var.location
  resource_group_name = var.rg_name
  os_type            = "Linux"
  sku_name           = "B1"
}

resource "azurerm_linux_web_app" "webapp" {
  name                = var.web_app_name
  location           = var.location
  resource_group_name = var.rg_name
  service_plan_id    = azurerm_service_plan.app_plan.id

  site_config {
    always_on = true
  }
}
