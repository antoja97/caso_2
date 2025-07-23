output "resource_group_name" {
  description = "Nombre del grupo de recursos creado"
  value       = azurerm_resource_group.rg.name
}

output "acr_login_server" {
  description = "URL del Azure Container Registry para hacer push/pull de imágenes"
  value       = azurerm_container_registry.tf-acr.login_server
}

output "vm_public_ip" {
  description = "IP pública asignada a la máquina virtual"
  value       = azurerm_public_ip.vm_public_ip.ip_address
  sensitive   = false
}

output "aks_cluster_name" {
  description = "Nombre del cluster AKS creado"
  value       = azurerm_kubernetes_cluster.tf-aks.name
}

output "ssh_private_key_file" {
  description = "Contenido de la clave privada SSH"
  value       = tls_private_key.ssh_key.private_key_pem
  sensitive   = true
}

