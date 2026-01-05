# AKS module with cluster autoscaler
#
#Reference: https://learn.microsoft.com/azure/aks/cluster-autoscaler
# 

resource "azurerm_kubernetes_cluster" "this" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.cluster_name

  kubernetes_version = "1.29"

  default_node_pool {
    name       = "system"
    vm_size    = "Standard_D4s_v5"
    min_count  = 2
    max_count  = 6
    enable_auto_scaling = true
  }

  identity {
    type = "SystemAssigned"
  }
}
