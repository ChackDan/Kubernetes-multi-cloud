output "cluster_name" {
  description = "AKS cluster name"
  value       = azurerm_kubernetes_cluster.this.name
}

output "cluster_endpoint" {
  description = "AKS Kubernetes API server endpoint"
  value       = azurerm_kubernetes_cluster.this.kube_config[0].host
  sensitive   = true
}

output "cluster_id" {
  description = "AKS cluster resource ID"
  value       = azurerm_kubernetes_cluster.this.id
}

output "kubernetes_version" {
  description = "AKS Kubernetes version"
  value       = azurerm_kubernetes_cluster.this.kubernetes_version
}