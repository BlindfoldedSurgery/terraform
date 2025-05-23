module "bs_config_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.3.0"
  name                                   = "bs-config"
  description                            = "Config package for Python"
  allow_default_branch_protection_bypass = false
  required_status_checks = [
    "check-commits / check",
    "test (3.11) / test",
    "test (3.12) / test",
    "test (3.13) / test",
    "lint (3.11) / lint",
    "lint (3.12) / lint",
    "lint (3.13) / lint",
  ]
}
