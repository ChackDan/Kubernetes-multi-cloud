############################
# Required
############################

variable "cluster_name" {
  description = "Name of the GKE cluster"
  type        = string
}

variable "project_id" {
  description = "GCP project ID where the GKE cluster will be created"
  type        = string
}

variable "region" {
  description = "GCP region for the GKE cluster"
  type        = string
}

############################
# Optional with defaults
############################

variable "kubernetes_version" {
  description = "Kubernetes version for the GKE control plane"
  type        = string
  default     = null
}

variable "node_machine_type" {
  description = "Machine type for GKE worker nodes"
  type        = string
  default     = "e2-standard-4"
}

variable "node_min_count" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 2
}

variable "node_max_count" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 6
}

############################
# Identity and security
############################

variable "enable_workload_identity" {
  description = "Enable GKE Workload Identity"
  type        = bool
  default     = true
}

############################
# Labels
############################

variable "labels" {
  description = "Labels applied to GKE resources"
  type        = map(string)
  default     = {}
}
