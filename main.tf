resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.loc
}

resource "azurerm_public_ip" "example" {
  name                = var.pipname
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = var.am


}
resource "azurerm_managed_disk" "example" {
  name                 = var.mddisk
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = var.sat
  create_option        = var.co
  disk_size_gb         = var.dsize


}
