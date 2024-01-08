resource "kubernetes_namespace_v1" "namespaces" {
  for_each = { for key, item in var.namespaces : item.metadata.name => item }

  metadata {
    name        = each.value.metadata.name
    annotations = each.value.metadata.annotations
    labels      = each.value.metadata.labels
  }
}

resource "kubernetes_resource_quota_v1" "resource_quotas" {
  for_each = { for key, item in var.resource_quotas : item.metadata.name => item }

  metadata {
    name        = each.value.metadata.name
    annotations = each.value.metadata.annotations
    labels      = each.value.metadata.labels
    namespace   = each.value.metadata.namespace
  }

  spec {
    hard   = each.value.spec.hard
    scopes = each.value.spec.scopes

    scope_selector {
      dynamic "match_expression" {
        for_each = (each.value.spec.scope_selector.match_expression != null ? each.value.spec.scope_selector.match_expression : [])
        content {
          scope_name = match_expression.value["scope_name"]
          operator   = match_expression.value["operator"]
          values     = match_expression.value["values"]
        }
      }
    }
  }
}
