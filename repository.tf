resource "argocd_repository" "gitlab-repo" {
  repo           = "https://gitlab.com/virtapp-infra/global-charts.git"
  type           = "git"
  username       = var.git_username     # optional
  password       = var.git_password     # optional
  insecure       = false                # true if skipping TLS validation
  enable_lfs     = false
  project        = "default"            # optional
}
