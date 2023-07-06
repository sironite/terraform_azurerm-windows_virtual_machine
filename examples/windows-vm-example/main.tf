module "windows_virtual_machine" {
  source  = "sironite/windows_virtual_machine/azurerm"
  version = "X.X.X"

  name                = "windows-vm"
  resource_group_name = "windows-vm-example"
  location            = "West Europe"
  admin_username      = "adminuser"
  admin_password      = "Password1234!"

  network_interface_ids = [
    "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/windows-vm-example/providers/Microsoft.Network/networkInterfaces/windows-vm-nic"
  ]
  
  tags = {
    environment = "dev"
  }
}