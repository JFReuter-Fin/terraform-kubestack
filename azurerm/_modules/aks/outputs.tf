output "aks_vnet" {
  value = length(azurerm_virtual_network.current) > 0 ? azurerm_virtual_network.current[0] : null
}

output "kubeconfig" {
  sensitive = true
  value     = data.template_file.kubeconfig.rendered
}
