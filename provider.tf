terraform {
  required_providers {
    argocd = {
      source  = "argoproj-labs/argocd"
      version = ">= 7.0.0"
    }
  }
}

provider "argocd" {
  server_addr = "argo-dashboard.virtapp.io"
  username    = "admin"
  password    = "admin"
  insecure    = true
}
