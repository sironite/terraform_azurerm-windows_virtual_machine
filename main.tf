resource "azurerm_windows_virtual_machine" "this" {
  name                = var.vm_name
  computer_name       = var.computer_name
  location            = var.location
  resource_group_name = var.resource_group_name

  size                     = var.vm_size
  secure_boot_enabled      = var.secure_boot_enabled
  enable_automatic_updates = var.enable_automatic_updates
  patch_assessment_mode    = var.patch_assessment_mode
  patch_mode               = var.patch_mode
  provision_vm_agent       = var.provision_vm_agent
  license_type             = var.license_type
  admin_username           = var.admin_username
  admin_password           = var.admin_password

  network_interface_ids        = var.network_interface_ids
  availability_set_id          = var.availability_set_id
  proximity_placement_group_id = var.proximity_placement_group_id


  os_disk {
    name                   = var.os_disk_name
    disk_size_gb           = var.os_disk_size_gb
    disk_encryption_set_id = var.disk_encryption_set_id
    caching                = var.os_disk_caching
  }

  source_image_reference {
    version   = var.source_image_version
    sku       = var.source_image_sku
    publisher = var.source_image_publisher
    offer     = var.source_image_offer
  }

  boot_diagnostics {
    storage_account_uri = var.boot_diagnostics_storage_account_uri
  }

  identity {
    type = var.identity_type
  }

  tags = var.tags
}

