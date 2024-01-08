kube_namespaces = [
  {
    metadata = {
      name        = "test-app-1"
      annotations = {}
      labels = {
        application = "test-app"
        environment = "sandbox"
      }
    }
  },
]
