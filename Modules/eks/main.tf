#AWS EKS module with autoscaling
#Why use the community module ? Because rolling your own EKS is wasted effort.
#Reference: https://github.com/terraform-aws-modules/terraform-aws-eks
#
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = "1.29"

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnets

  eks_managed_node_groups = {
    default = {
      min_size     = 2
      max_size     = 6
      desired_size = 3

      instance_types = ["m6i.large"]
      capacity_type  = "ON_DEMAND"
    }
  }

  enable_irsa = true
}
