output "cluster_name" {
  description = "EKS cluster name"
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "EKS Kubernetes API server endpoint"
  value       = module.eks.cluster_endpoint
}

output "oidc_provider_arn" {
  description = "OIDC provider ARN for IAM Roles for Service Accounts"
  value       = module.eks.oidc_provider_arn
}

output "cluster_id" {
  description = "EKS cluster ID"
  value       = module.eks.cluster_id
}

