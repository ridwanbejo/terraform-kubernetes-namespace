# Resource quota with multiple matchExpression example for namespace submodule

To run this example you need to execute:

```
$ terraform init
$ terraform plan
$ terraform apply
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.25.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tf_kube_namespace"></a> [tf\_kube\_namespace](#module\_tf\_kube\_namespace) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kube_namespaces"></a> [kube\_namespaces](#input\_kube\_namespaces) | n/a | `list(any)` | `[]` | no |
| <a name="input_kube_resource_quotas"></a> [kube\_resource\_quotas](#input\_kube\_resource\_quotas) | n/a | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kube_namespaces"></a> [kube\_namespaces](#output\_kube\_namespaces) | Current Kubernetes namespaces |
| <a name="output_kube_resource_quotas"></a> [kube\_resource\_quotas](#output\_kube\_resource\_quotas) | Current Kubernetes resource quotas |
<!-- END_TF_DOCS -->
