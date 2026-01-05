#This is deliberate. Each cloud remains opinionated.

module "eks" {
  source          = "./modules/eks"
  cluster_name    = "prod-eks"
  region          = var.aws_region
  vpc_id          = var.aws_vpc_id
  private_subnets = var.aws_private_subnets
}

module "gke" {
  source       = "./modules/gke"
  cluster_name = "prod-gke"
  project_id  = var.gcp_project
  region      = var.gcp_region
}

module "aks" {
  source              = "./modules/aks"
  cluster_name        = "prod-aks"
  resource_group_name = var.azure_rg
  location            = var.azure_location
}
