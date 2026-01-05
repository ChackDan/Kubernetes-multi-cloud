output "clusters" {
  description = "Structured outputs for all Kubernetes clusters by cloud"
  value = {
    environment = var.environment

    eks = {
      name              = module.eks.cluster_name
      endpoint          = module.eks.cluster_endpoint
      oidc_provider_arn = module.eks.oidc_provider_arn
      cloud             = "aws"
    }

    gke = {
      name     = module.gke.cluster_name
      endpoint = module.gke.endpoint
      cloud    = "gcp"
    }

    aks = {
      name     = module.aks.cluster_name
      endpoint = module.aks.kube_config[0].host
      cloud    = "azure"
    }
  }

  sensitive = true
}