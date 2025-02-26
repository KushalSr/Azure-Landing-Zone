output "vm_id" {
  description = "The ID of the virtual machine"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "vm_public_ip" {
  description = "Public IP address of the virtual machine"
  value       = azurerm_public_ip.vm_public_ip.ip_address
}

output "admin_username" {
  description = "Admin username for the virtual machine"
  value       = azurerm_linux_virtual_machine.vm.admin_username
}

output "private_ip" {
  description = "Private IP of the VM"
  value       = azurerm_network_interface.nic.private_ip_address
}
