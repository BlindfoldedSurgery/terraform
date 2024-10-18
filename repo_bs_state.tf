module "bs_state_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.3"
  name                                   = "bs-state"
  description                            = "State package for Python"
  allow_default_branch_protection_bypass = false
  required_status_checks = [
    "check-commits / check",
    "test (3.11)",
    "test (3.12)",
    "test (3.13)",
    "lint (3.11) / lint",
    "lint (3.12) / lint",
    "lint (3.13) / lint",
    "validate-renovate-config / validate",
    "codecov/patch",
    "SonarCloud Code Analysis",
  ]
}
