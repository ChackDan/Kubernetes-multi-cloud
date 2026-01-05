############################
# Required
############################

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "region" {
  description = "AWS region where the EKS cluster will be created"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the EKS cluster will be deployed"
  type        = string
}

variable "private_subnets" {
  description = "List of private subnet IDs for EKS worker nodes"
  type        = list(string)
}

############################
# Optional with defaults
############################

variable "kubernetes_version" {
  description = "Kubernetes version for the EKS control plane"
  type        = string
  default     = "1.29"
}

variable "node_instance_types" {
  description = "EC2 instance types for EKS managed node groups"
  type        = list(string)
  default     = ["m6i.large"]
}

variable "node_min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 2
}

variable "node_max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 6
}

variable "node_desired_size" {
  description = "Desired number of worker nodes at creation time"
  type        = number
  default     = 3
}

variable "capacity_type" {
  description = "Capacity type for worker nodes, ON_DEMAND or SPOT"
  type        = string
  default     = "ON_DEMAND"
}

############################
# Tags
############################

variable "tags" {
  description = "Common tags applied to all EKS resources"
  type        = map(string)
  default     = {}
}

