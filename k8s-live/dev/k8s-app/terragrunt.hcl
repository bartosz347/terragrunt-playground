include "root" {
  path   = find_in_parent_folders()
  expose = true
}

include "env" {
  path   = "${get_terragrunt_dir()}/../../_env/k8s-app.hcl"
  expose = true
}

terraform {
  source = "${include.env.locals.source_base_url}?ref=${include.root.locals.ref}"
}
