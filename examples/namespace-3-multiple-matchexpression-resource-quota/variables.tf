variable "kube_namespaces" {
  type    = list(any)
  default = []
}

variable "kube_resource_quotas" {
  type    = list(any)
  default = []
}
