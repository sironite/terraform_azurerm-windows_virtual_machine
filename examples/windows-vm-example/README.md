# Terraform module | AzureRM - Windows Virtual Machine

This Terraform module is designed to create a Windows Virtual Machine for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`Windows Virtual Machine`

```hcl
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

```

## Authors

The module is maintained by [Sironite](https://github.com/sironite)

## Documentation

> product: https://azure.microsoft.com/en-us/
> 
> Provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest
> 
> Documentation: https://learn.microsoft.com/en-us/azure/?product=popular
