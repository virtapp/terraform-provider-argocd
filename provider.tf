terraform {
  required_providers {
    argocd = {
      source  = "oboukili/argocd"
      version = ">= 4.0.0"
    }
  }
}

provider "argocd" {
  server_addr = "argo-dashboard.virtapp.io:443"
  username    = "admin"
  password    = "admin"
  insecure    = true
}
