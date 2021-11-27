provider "helm" {
  kubernetes {
    host                   = digitalocean_kubernetes_cluster.crossplane.kube_config[0].host
    token             = digitalocean_kubernetes_cluster.crossplane.kube_config[0].token
    cluster_ca_certificate = base64decode(digitalocean_kubernetes_cluster.crossplane.kube_config[0].cluster_ca_certificate)
  }
}

resource "helm_release" "crossplane" {
  name       = "do-crossplane"
  repository = "https://charts.crossplane.io/stable"
  chart      = "crossplane"
  version    = "1.5.0"
  dependency_update = true
}
