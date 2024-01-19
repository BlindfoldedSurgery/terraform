module "terraform_repo_module_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v6.0.0"
  name                                   = "terraform-repo-module"
  description                            = "Terraform module that allows configuration of GitHub repositories"
  allow_default_branch_protection_bypass = false
  required_status_checks = [
    "fmt",
    "validate",
    "check-commits / check"
  ]
}
