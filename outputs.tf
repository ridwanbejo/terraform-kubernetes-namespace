output "kubernetes_namespaces" {
  description = "List of Kubernetes namespaces"
  value       = { for key, item in var.namespaces : item.metadata.name => item }
}

output "kubernetes_resource_quotas" {
  description = "List of Kubernetes resource quotas"
  value       = { for key, item in var.resource_quotas : item.metadata.name => item }
}
