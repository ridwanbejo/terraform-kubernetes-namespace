module "tf_kube_namespace" {
  source = "../../"

  namespaces      = var.kube_namespaces
  resource_quotas = var.kube_resource_quotas
}
