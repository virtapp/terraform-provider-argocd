resource "argocd_application" "jenkins" {
  metadata {
    name      = "jenkins"
    namespace = "argocd"
  }

  spec {
    project = "default"

    source {
      repo_url        = "https://github.com/bitnami/charts.git"
      target_revision = "HEAD"
      path            = "bitnami/jenkins"
      helm {
        values = <<EOF
replicaCount: 1
service:
  type: ClusterIP
  port: 80
EOF
    }
}
    destination {
      server    = "https://kubernetes.default.svc"
      namespace = "default"
    }

    sync_policy {
      automated {
        prune = true
        self_heal = true
      }
    }
  }
  depends_on = [argocd_application.httpd]
}
