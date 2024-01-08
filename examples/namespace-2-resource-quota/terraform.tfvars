kube_namespaces = [
  {
    metadata = {
      name        = "test-app-2"
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
      name        = "test-app-2-rq-high"
      namespace   = "test-app-2"
      annotations = {}
      labels = {
        application = "test-app"
        environment = "sandbox"
        namespace   = "test-app-2"
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
          }
        ]
      }
    }
  },
  {
    metadata = {
      name        = "test-app-2-rq-medium"
      namespace   = "test-app-2"
      annotations = {}
      labels = {
        application = "test-app"
        environment = "sandbox"
        namespace   = "test-app-2"
      }
    }
    spec = {
      hard = {
        cpu    = "10"
        memory = "20Gi"
        pods   = "10"
      }
      scope_selector = {
        match_expression = [
          {
            scope_name = "PriorityClass"
            operator   = "In"
            values     = ["medium"]
          }
        ]
      }
    }
  },
  {
    metadata = {
      name        = "test-app-2-rq-low"
      namespace   = "test-app-2"
      annotations = {}
      labels = {
        application = "test-app"
        environment = "sandbox"
        namespace   = "test-app-2"
      }
    }
    spec = {
      hard = {
        cpu    = "5"
        memory = "10Gi"
        pods   = "10"
      }
      scope_selector = {
        match_expression = [
          {
            scope_name = "PriorityClass"
            operator   = "In"
            values     = ["low"]
          }
        ]
      }
    }
  },
]
