variable "cluster_name" {
  description = "Name of the local kind cluster"
  type        = string
  default     = "devops-toy"
}

variable "argocd_namespace" {
  description = "Namespace to install ArgoCD into"
  type        = string
  default     = "argocd"
}

variable "argocd_chart_version" {
  description = "Version constraint for the argo-cd helm chart"
  type        = string
  default     = ">= 7.0.0, < 8.0.0"
}
