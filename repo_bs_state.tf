module "bs_state_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v11.0.0"
  name                                   = "bs-state"
  description                            = "State package for Python"
  allow_default_branch_protection_bypass = false
  required_status_checks = [
    "all-checks-passed",
  ]
}
