output "argocd_application" {
  description = "Name of the Argo CD application"
  value       = argocd_application.httpd.metadata[0].name
}
output "argocd_repository" {
  description = "Git repository URL used by the application"
  value       = argocd_application.httpd.spec[0].source[0].repo_url
}
