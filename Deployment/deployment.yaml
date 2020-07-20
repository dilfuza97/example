resource "kubernetes_service" "flask-app" {
  metadata {
    name = "flask-app"

    labels {
      run = "artemis"
    }
  }

  spec {
    port {
      protocol    = "TCP"
      port        = 80
      target_port = "5000"
    }

    selector {
      run = "artemis"
    }

    type = "LoadBalancer"
  }
}

resource "kubernetes_deployment" "flask-app" {
  metadata {
    name = "flask-app"
  }

  spec {
    replicas = 3

    selector {
      match_labels {
        run = "flask-app"
      }
    }

    template {
      metadata {
        labels {
          run = "flask-app"
        }
      }

      spec {
        container {
          name  = "flask-app"
          image = "ECR repository and image name"

          port {
            container_port = 80
          }
        }
      }
    }
  }
}
