output "rgout" {
  value = azurerm_resource_group.example.name
}
output "pipout" {
  value = aazurerm_public_ip.example.name
}
output "diskout" {
  value = azurerm_managed_disk.example.name
}