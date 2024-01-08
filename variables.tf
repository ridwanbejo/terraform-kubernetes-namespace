variable "namespaces" {
  type = list(object({
    metadata = object({
      annotations = optional(map(any))
      labels      = optional(map(any))
      name        = string
    })
  }))
}

variable "resource_quotas" {
  type = list(object({
    metadata = object({
      annotations = optional(map(any))
      labels      = optional(map(any))
      name        = string
      namespace   = optional(string)
    })

    spec = optional(object({
      hard   = optional(map(any))
      scopes = optional(list(string))
      scope_selector = optional(object({
        match_expression = optional(list(object({
          scope_name = optional(string)
          operator   = optional(string)
          values     = optional(list(string))
        })))
      }))
    }))
  }))
}
