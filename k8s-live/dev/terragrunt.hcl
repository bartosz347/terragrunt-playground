terraform {
  extra_arguments "common_vars" {
    commands = get_terraform_commands_that_need_vars()

    required_var_files = [
      "${get_parent_terragrunt_dir()}/terraform.tfvars"
    ]
  }
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<-EOF
  provider "digitalocean" {
    token = var.do_token
  }
  EOF
}

# TODO: load bucket name from an env?
generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<-EOF
  terraform {
    backend "s3" {
      bucket         = "bw-tf-state"
      endpoint       = "https://fra1.digitaloceanspaces.com"
      key            = "dev/${path_relative_to_include()}/terraform.tfstate"
      region         = "us-east-1"
      skip_credentials_validation = true
      skip_metadata_api_check     = true
    }
  }
  EOF
}

locals {
  # Modules version to use (branch/tag/commit)
  ref = "master"
}

inputs = {
  cluster_name = "dev-kubernetes-cluster"
  domain       = "k8s-dev.do.bwbw.eu"
}
