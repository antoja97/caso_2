variable "subscription_id" {
  description = "ID de la suscripción de Azure"
  type        = string
}

variable "tenant_id" {
  description = "ID del tenant de Azure"
  type        = string
}

variable "location" {
  description = "Región de Azure donde se crearán los recursos"
  type        = string
  default     = "westeurope"
}

variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  type        = string
  default     = "casopractico2-rg"
}

variable "acr_name" {
  description = "Nombre del Azure Container Registry"
  type        = string
  default     = "casopractico2acr"
}

variable "vm_name" {
  description = "Nombre de la máquina virtual"
  type        = string
  default     = "casopractico2vm"
}

variable "aks_name" {
  description = "Nombre del cluster AKS"
  type        = string
  default     = "casopractico2aks"
}

variable "ssh_public_key_path" {
  description = "Ruta a la clave pública SSH"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}
