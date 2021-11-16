provider "helm" {
  kubernetes {
    host                   = digitalocean_kubernetes_cluster.crossplane.kube_config[0].host
    client_certificate     = digitalocean_kubernetes_cluster.crossplane.kube_config[0].client_certificate
    client_key             = digitalocean_kubernetes_cluster.crossplane.kube_config[0].client_key
    cluster_ca_certificate = digitalocean_kubernetes_cluster.crossplane.kube_config[0].cluster_ca_certificate
  }
}

resource "helm_release" "example" {
  name       = "do-crossplane"
  repository = "https://charts.crossplane.io/stable"
  chart      = "crossplane"
  version    = "1.5.0"

}
