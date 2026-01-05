############################
# Global
############################

variable "environment" {
  description = "Deployment environment name, for example dev, staging, prod"
  type        = string
}

############################
# AWS
############################

variable "aws_region" {
  description = "AWS region for EKS"
  type        = string
}

variable "aws_vpc_id" {
  description = "VPC ID where EKS will be deployed"
  type        = string
}

variable "aws_private_subnets" {
  description = "List of private subnet IDs for EKS worker nodes"
  type        = list(string)
}

############################
# GCP
############################

variable "gcp_project" {
  description = "GCP project ID for GKE"
  type        = string
}

variable "gcp_region" {
  description = "GCP region for GKE"
  type        = string
}

############################
# Azure
############################

variable "azure_rg" {
  description = "Azure resource group name for AKS"
  type        = string
}

variable "azure_location" {
  description = "Azure region for AKS"
  type        = string
}
