<!-- BEGIN_TF_DOCS -->
 ## Windows Virtual Machine
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](Invullen) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](Invullen)

# Usage - Module

## Windows Virtual Machine

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

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_windows_virtual_machine.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_virtual_machine) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| admin\_password | The admin password for the virtual machine. | `string` | yes |
| admin\_username | The admin username for the virtual machine. | `string` | yes |
| computer\_name | The computer name of the virtual machine. | `string` | yes |
| location | The location where the virtual machine will be created. | `string` | yes |
| resource\_group\_name | The name of the resource group where the virtual machine will be created. | `string` | yes |
| vm\_name | The name of the virtual machine. | `string` | yes |
| availability\_set\_id | The ID of the availability set that the virtual machine should be added to. | `string` | no |
| boot\_diagnostics\_storage\_account\_uri | The URI of the storage account to use for boot diagnostics. | `string` | no |
| disk\_encryption\_set\_id | The ID of the disk encryption set for the virtual machine. | `string` | no |
| enable\_automatic\_updates | Whether or not automatic updates are enabled on the virtual machine. | `bool` | no |
| identity\_type | The type of identity to assign to the virtual machine. | `string` | no |
| license\_type | The license type for the virtual machine. | `string` | no |
| network\_interface\_ids | The IDs of the network interfaces attached to the virtual machine. | `list(string)` | no |
| os\_disk\_caching | The caching mode for the OS disk for the virtual machine. | `string` | no |
| os\_disk\_name | The name of the OS disk for the virtual machine. | `string` | no |
| os\_disk\_size\_gb | The size of the OS disk for the virtual machine. | `number` | no |
| patch\_assessment\_mode | The patch assessment mode for the virtual machine. | `string` | no |
| patch\_mode | The patch mode for the virtual machine. | `string` | no |
| provision\_vm\_agent | Whether or not the VM agent should be provisioned on the virtual machine. | `bool` | no |
| proximity\_placement\_group\_id | The ID of the proximity placement group that the virtual machine should be added to. | `string` | no |
| secure\_boot\_enabled | Whether or not secure boot is enabled on the virtual machine. | `bool` | no |
| source\_image\_offer | The offer of the source image for the virtual machine. | `string` | no |
| source\_image\_publisher | The publisher of the source image for the virtual machine. | `string` | no |
| source\_image\_sku | The SKU of the source image for the virtual machine. | `string` | no |
| source\_image\_version | The version of the source image for the virtual machine. | `string` | no |
| tags | A map of tags to assign to the virtual machine. | `map(string)` | no |
| vm\_size | The size of the virtual machine. | `string` | no |

## Outputs

| Name | Description |
|------|-------------|
| vm\_id | The ID of the virtual machine. |
| vm\_name | The name of the virtual machine. |
| vm\_private\_ip | The private IP address of the virtual machine. |

## Related documentation
<!-- END_TF_DOCS -->