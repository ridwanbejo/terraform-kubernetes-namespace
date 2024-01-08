output "kube_namespaces" {
  description = "Current Kubernetes namespaces"
  value       = module.tf_kube_namespace.kubernetes_namespaces
}
