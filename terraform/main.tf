terraform {
  required_version = ">= 1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

#resource "azurerm_resource_group" "rg" {
#  name     = "rg-devops-2025"
#  location = "westeurope"
#}

resource "azurerm_container_registry" "acr" {
  name                = "acrdevops2025"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"
  admin_enabled       = true
}

resource "azurerm_role_assignment" "ra-perm" {
  principal_id         = azurerm_kubernetes_cluster.tf-aks.identity[0].principal_id
  role_definition_name = "AcrPull"
  scope                = azurerm_container_registry.acr.id
}

