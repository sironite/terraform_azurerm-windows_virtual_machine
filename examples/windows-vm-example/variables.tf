variable "vm_name" {
  type        = string
  description = "The name of the virtual machine."
}

variable "computer_name" {
  type        = string
  description = "The computer name of the virtual machine."
}

variable "location" {
  type        = string
  description = "The location where the virtual machine will be created."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the virtual machine will be created."
}

variable "vm_size" {
  type        = string
  description = "The size of the virtual machine."
  default     = "Standard_D2s_v5"
}

variable "secure_boot_enabled" {
  type        = bool
  description = "Whether or not secure boot is enabled on the virtual machine."
  default     = true
}

variable "enable_automatic_updates" {
  type        = bool
  description = "Whether or not automatic updates are enabled on the virtual machine."
  default     = true
}

variable "patch_assessment_mode" {
  type        = string
  description = "The patch assessment mode for the virtual machine."
  default     = "ImageDefault"
}

variable "patch_mode" {
  type        = string
  description = "The patch mode for the virtual machine."
  default     = "AutomaticByOS"
}

variable "provision_vm_agent" {
  type        = bool
  description = "Whether or not the VM agent should be provisioned on the virtual machine."
  default     = true
}

variable "license_type" {
  type        = string
  description = "The license type for the virtual machine."
  default     = "Windows_Server"
}

variable "admin_username" {
  type        = string
  description = "The admin username for the virtual machine."
}

variable "admin_password" {
  type        = string
  description = "The admin password for the virtual machine."
  sensitive   = true
}

variable "network_interface_ids" {
  type        = list(string)
  description = "The IDs of the network interfaces attached to the virtual machine."
  default     = null
}

variable "availability_set_id" {
  type        = string
  description = "The ID of the availability set that the virtual machine should be added to."
  default     = null
}

variable "proximity_placement_group_id" {
  type        = string
  description = "The ID of the proximity placement group that the virtual machine should be added to."
  default     = null
}

variable "os_disk_name" {
  type        = string
  description = "The name of the OS disk for the virtual machine."
  default     = "osdisk"
}

variable "os_disk_size_gb" {
  type        = number
  description = "The size of the OS disk for the virtual machine."
  default     = 128
}

variable "disk_encryption_set_id" {
  type        = string
  description = "The ID of the disk encryption set for the virtual machine."
  default     = null
}

variable "os_disk_caching" {
  type        = string
  description = "The caching mode for the OS disk for the virtual machine."
  default     = "ReadWrite"
}

variable "source_image_version" {
  type        = string
  description = "The version of the source image for the virtual machine."
  default     = "latest"
}

variable "source_image_sku" {
  type        = string
  description = "The SKU of the source image for the virtual machine."
  default     = "2022-Datacenter"
}

variable "source_image_publisher" {
  type        = string
  description = "The publisher of the source image for the virtual machine."
  default     = "MicrosoftWindowsServer"
}

variable "source_image_offer" {
  type        = string
  description = "The offer of the source image for the virtual machine."
  default     = "WindowsServer"
}

variable "boot_diagnostics_storage_account_uri" {
  type        = string
  description = "The URI of the storage account to use for boot diagnostics."
  default     = null
}

variable "identity_type" {
  type        = string
  description = "The type of identity to assign to the virtual machine."
  default     = "SystemAssigned"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the virtual machine."
  default     = {}
}