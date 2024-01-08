# Terraform-Kubernetes-Namespace module

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.25.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.25.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_namespace_v1.namespaces](https://registry.terraform.io/providers/hashicorp/kubernetes/2.25.1/docs/resources/namespace_v1) | resource |
| [kubernetes_resource_quota_v1.resource_quotas](https://registry.terraform.io/providers/hashicorp/kubernetes/2.25.1/docs/resources/resource_quota_v1) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_namespaces"></a> [namespaces](#input\_namespaces) | n/a | <pre>list(object({<br>    metadata = object({<br>      annotations = optional(map(any))<br>      labels      = optional(map(any))<br>      name        = string<br>    })<br>  }))</pre> | n/a | yes |
| <a name="input_resource_quotas"></a> [resource\_quotas](#input\_resource\_quotas) | n/a | <pre>list(object({<br>    metadata = object({<br>      annotations = optional(map(any))<br>      labels      = optional(map(any))<br>      name        = string<br>      namespace   = optional(string)<br>    })<br><br>    spec = optional(object({<br>      hard   = optional(map(any))<br>      scopes = optional(list(string))<br>      scope_selector = optional(object({<br>        match_expression = optional(list(object({<br>          scope_name = optional(string)<br>          operator   = optional(string)<br>          values     = optional(list(string))<br>        })))<br>      }))<br>    }))<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kubernetes_namespaces"></a> [kubernetes\_namespaces](#output\_kubernetes\_namespaces) | List of Kubernetes namespaces |
| <a name="output_kubernetes_resource_quotas"></a> [kubernetes\_resource\_quotas](#output\_kubernetes\_resource\_quotas) | List of Kubernetes resource quotas |
<!-- END_TF_DOCS -->
