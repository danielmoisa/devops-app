output "cluster_name" {
  value = kind_cluster.this.name
}

output "kubeconfig_path" {
  value = kind_cluster.this.kubeconfig_path
}

output "argocd_namespace" {
  value = kubernetes_namespace.argocd.metadata[0].name
}
