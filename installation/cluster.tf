resource "digitalocean_kubernetes_cluster" "crossplane" {
  name   = "crossplane"
  region = var.region
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = "1.21.5-do.0"

  node_pool {
    name       = "crossplane"
    size       = "s-2vcpu-2gb"
    node_count = 3
  }
}
