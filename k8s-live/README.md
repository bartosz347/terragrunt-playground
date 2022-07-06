## Info

This example shows how Terragrunt can be used to deploy a **single Terraform configuration** to **multiple environments** where each of the environments has a **different set of parameters**.

E.g. module `k8s-cluster` deploys a k8s cluster. Number of worker nodes can be changed independently for dev and prod.
