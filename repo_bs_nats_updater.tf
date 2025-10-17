module "bs_nats_updater_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.1"
  name                                   = "bs-nats-updater"
  description                            = "Python package to receive Telegram updates via NATS"
  allow_default_branch_protection_bypass = false
  required_status_checks = [
    "all-checks-passed",
  ]
}
