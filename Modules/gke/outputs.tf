output "cluster_name" {
  description = "GKE cluster name"
  value       = google_container_cluster.this.name
}

output "cluster_endpoint" {
  description = "GKE Kubernetes API server endpoint"
  value       = google_container_cluster.this.endpoint
  sensitive   = true
}

output "cluster_id" {
  description = "GKE cluster resource ID"
  value       = google_container_cluster.this.id
}

output "kubernetes_version" {
  description = "GKE Kubernetes version"
  value       = google_container_cluster.this.master_version
}
