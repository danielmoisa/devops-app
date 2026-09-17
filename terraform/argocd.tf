resource "kubernetes_namespace" "argocd" {
  metadata {
    name = var.argocd_namespace
  }

  depends_on = [kind_cluster.this]
}

resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = var.argocd_chart_version
  namespace  = kubernetes_namespace.argocd.metadata[0].name

  # keep the toy setup lightweight; the default chart already exposes
  # the API server via a ClusterIP service reachable through port-forward
  set {
    name  = "configs.params.server\\.insecure"
    value = "true"
  }
}
