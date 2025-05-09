resource "argocd_application" "httpd" {
  metadata {
    name      = "httpd"
    namespace = "argocd"
  }

  spec {
    project = "default"

    source {
      repo_url        = "https://github.com/virtapp/deployment.git"
      target_revision = "HEAD"
      path            = "httpd"
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
}

resource "argocd_application" "apache" {
  metadata {
    name      = "apache"
    namespace = "argocd"
  }

  spec {
    project = "default"

    source {
      repo_url        = "https://gitlab.com/virtapp-infra/global-charts.git"
      target_revision = "HEAD"
      path            = "apache"
      helm {
        values = <<EOF
replicaCount: 2
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
}
