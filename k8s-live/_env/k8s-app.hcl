dependencies {
  paths = ["../k8s-cluster", "../ssl-certs"]
}

locals {
  source_base_url = "git::ssh://git@github.com/bartosz347/terraform-playground.git//k8s-digitalocean/k8s-app"
}
