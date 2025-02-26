module "resource_group" {
  source              = "./modules/resource_group"
  rg_name            = var.rg_name
  location           = var.location
}

module "storage_account" {
  source              = "./modules/storage_account"
  rg_name             = module.resource_group.rg_name
  location            = var.location
  storage_account_name = var.storage_account_name
}

module "virtual_network" {
  source              = "./modules/virtual_network"
  rg_name             = module.resource_group.rg_name
  location            = var.location
  vnet_name           = var.vnet_name
  address_space       = var.vnet_address_space
}

module "virtual_machine" {
  source              = "./modules/virtual_machine"
  rg_name             = module.resource_group.rg_name
  location            = var.location
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
}

module "web_app" {
  source              = "./modules/web_app"
  rg_name             = module.resource_group.rg_name
  location            = var.location
  web_app_name        = var.web_app_name
}

module "acr" {
  source              = "./modules/acr"
  rg_name             = module.resource_group.rg_name
  location            = var.location
  acr_name            = var.acr_name
}

module "load_balancer" {
  source              = "./modules/load_balancer"
  rg_name             = module.resource_group.rg_name
  location            = var.location
  lb_name             = var.lb_name
}
