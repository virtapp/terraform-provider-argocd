output "application_name" {
  description = "Name of the Argo CD application"
  value       = argocd_application.my_app.metadata[0].name
}

output "application_repo_url" {
  description = "Git repository URL used by the application"
  value       = argocd_application.my_app.spec[0].source[0].repo_url
}

output "application_destination_namespace" {
  description = "Target namespace where the app is deployed"
  value       = argocd_application.my_app.spec[0].destination[0].namespace
}
