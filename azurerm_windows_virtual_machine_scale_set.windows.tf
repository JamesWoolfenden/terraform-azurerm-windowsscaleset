resource "azurerm_windows_virtual_machine_scale_set" "windows" {
  name                = var.scaleset_name
  resource_group_name = var.resource_group.name
  location            = var.resource_group.location
  sku                 = var.sku
  instances           = var.instance_count
  admin_username      = var.admin_username
  admin_password      = var.admin_password

  source_image_reference {
    publisher = var.source_image_reference["publisher"]
    offer     = var.source_image_reference["offer"]
    sku       = var.source_image_reference["sku"]
    version   = var.source_image_reference["version"]
  }

  os_disk {
    storage_account_type = var.os_disk["storage_account_type"]
    caching              = var.os_disk["caching"]
  }

  network_interface {
    name    = "example"
    primary = true

    ip_configuration {
      name      = "internal"
      primary   = true
      subnet_id = var.azurerm_subnet.id
    }
  }
  tags                       = var.common_tags
  encryption_at_host_enabled = true
}
