resource "argocd_repository_credentials" "gitlab" {
  url      = "https://gitlab.com/virtapp-infra/global-charts.git"
  username = "global"
  password = "glpat-HgKuBDx7eN2SQ4vDbwWe"
}
