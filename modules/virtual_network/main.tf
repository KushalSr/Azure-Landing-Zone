resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location           = var.location
  resource_group_name = var.rg_name
  address_space       = var.address_space
}

resource "azurerm_subnet" "subnet" {
  name                 = "mySubnet"
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
