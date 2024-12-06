module "actions_actions_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.4.0"
  name                                   = "actions-releases"
  description                            = "Reusable Release Workflows for GitHub Actions"
  allow_default_branch_protection_bypass = false
  required_status_checks = [
    "commitizen-check / check"
  ]
}

module "actions_container_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.4.0"
  name                                   = "actions-container"
  description                            = "Reusable Container Workflows for GitHub Actions"
  allow_default_branch_protection_bypass = false
  required_status_checks = [
    "check / check",
    "build-docker-minimal / build",
    "build-docker-all-options ({{defaultContext}}:test-build) / build",
    "build-docker-all-options (test-build) / build",
    "build-docker-all-options (./test-build) / build",
    "build-kaniko-minimal / build",
    "build-kaniko-all-options (test-build) / build",
    "build-kaniko-all-options (./test-build) / build",
    "build-kaniko-amd64 / build",
    "build-docker-arm64 / build",
    "merge-with-artifact / create",
    "merge-with-outputs / create",
  ]
}

module "action_meta_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.4.0"
  name        = "actions-meta"
  description = "GitHub Actions that apply to every repo"

  allow_default_branch_protection_bypass = false

  required_status_checks = [
    "actionlint / check",
    "check-commits / check",
  ]
}

module "actions_python_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.4.0"
  name                                   = "actions-python"
  description                            = "Reusable Python Workflows for GitHub Actions"
  allow_default_branch_protection_bypass = false
  required_status_checks = [
    "check / check"
  ]
}
