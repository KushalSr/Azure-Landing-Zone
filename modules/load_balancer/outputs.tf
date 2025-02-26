output "lb_id" {
  description = "The ID of the Load Balancer"
  value       = azurerm_lb.lb.id
}

output "lb_ip" {
  description = "Public IP of the Load Balancer"
  value       = azurerm_public_ip.lb_public_ip.ip_address
}

output "backend_pool_id" {
  description = "ID of the backend pool for the Load Balancer"
  value       = azurerm_lb_backend_address_pool.lb_backend_pool.id
}

output "frontend_ip_configuration" {
  description = "Frontend IP configuration details of the Load Balancer"
  value       = azurerm_lb.lb.frontend_ip_configuration
}
