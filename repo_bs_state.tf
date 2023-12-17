module "bs_state_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v5.0.0"
  name                                   = "bs-state"
  description                            = "State package for Python"
  allow_default_branch_protection_bypass = false
  required_status_checks = [
    "check-commits / check",
    "test (3.11)",
    "lint (3.11) / lint",
    "validate-renovate-config / validate",
    "codecov/patch",
    "SonarCloud Code Analysis",
  ]
}
