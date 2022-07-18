## Info

This example shows how Terragrunt can be used to deploy a **single Terraform configuration** to **multiple environments** where each of the environments has a **different set of parameters**.

Terraform configuration is loaded from an external repository: https://github.com/bartosz347/terraform-playground/tree/master/k8s-digitalocean

E.g. module `k8s-cluster` deploys a k8s cluster. Number of worker nodes can be changed independently for dev and prod.

#### Note

`terragrunt.hcl` files present in terraform configuration repository (_external repository_) are skipped.


## References
 - [Terragrunt docs](https://terragrunt.gruntwork.io/docs/)
 - [Digital Ocean Spaces as Terraform backend](https://github.com/MattMorgis/digitalocean-spaces-terraform-backend)
