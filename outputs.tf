output "vm_name" {
  description = "The name of the virtual machine."
  value       = azurerm_windows_virtual_machine.this.name
}

output "vm_id" {
  description = "The ID of the virtual machine."
  value       = azurerm_windows_virtual_machine.this.id
}

output "vm_private_ip" {
  description = "The private IP address of the virtual machine."
  value       = azurerm_windows_virtual_machine.this.private_ip_address
}