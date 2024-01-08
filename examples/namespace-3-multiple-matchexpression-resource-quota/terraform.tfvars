kube_namespaces = [
  {
    metadata = {
      name        = "test-app-3"
      annotations = {}
      labels = {
        application = "test-app"
        environment = "sandbox"
      }
    }
  },
]

kube_resource_quotas = [
  {
    metadata = {
      name        = "test-app-3-rq"
      namespace   = "test-app-3"
      annotations = {}
      labels = {
        application = "test-app"
        environment = "sandbox"
        namespace   = "test-app-3"
      }
    }
    spec = {
      hard = {
        cpu    = "1000"
        memory = "200Gi"
        pods   = "10"
      }
      scope_selector = {
        match_expression = [
          {
            scope_name = "PriorityClass"
            operator   = "In"
            values     = ["high"]
          },
          {
            scope_name = "PriorityClass"
            operator   = "In"
            values     = ["cluster-services"]
          }
        ]
      }
    }
  }
]
