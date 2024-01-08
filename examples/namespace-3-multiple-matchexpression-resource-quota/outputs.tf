output "kube_namespaces" {
  description = "Current Kubernetes namespaces"
  value       = module.tf_kube_namespace.kubernetes_namespaces
}

output "kube_resource_quotas" {
  description = "Current Kubernetes resource quotas"
  value       = module.tf_kube_namespace.kubernetes_resource_quotas
}
