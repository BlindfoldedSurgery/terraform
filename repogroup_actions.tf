module "actions_actions_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.3.0"
  name                                   = "actions-releases"
  description                            = "Reusable Release Workflows for GitHub Actions"
  allow_default_branch_protection_bypass = false
  required_status_checks = [
    "commitizen / check-commits"
  ]
}

module "actions_container_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.3.0"
  name                                   = "actions-container"
  description                            = "Reusable Container Workflows for GitHub Actions"
  allow_default_branch_protection_bypass = false
  required_status_checks = [
    "commitizen / check-commits"
  ]
}

module "actions_python_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.3.0"
  name                                   = "actions-python"
  description                            = "Reusable Python Workflows for GitHub Actions"
  allow_default_branch_protection_bypass = false
  required_status_checks = [
    "commitizen / check-commits"
  ]
}
