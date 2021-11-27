output "kubeconf" {
  value     = digitalocean_kubernetes_cluster.crossplane.kube_config[0].raw_config
  sensitive = true
}
