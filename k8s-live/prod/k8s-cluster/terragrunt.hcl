include "root" {
  path = find_in_parent_folders()
}

# Note: in a real life scenario version tag should be used instead of master
terraform {
  source = "git::ssh://git@github.com/bartosz347/terraform-playground.git//k8s-digitalocean/k8s-cluster?ref=master"
}

inputs = {
  node_count = 2
}
