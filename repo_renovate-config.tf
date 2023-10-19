module "renovate_config_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.0.0"
  name                   = "renovate-config"
  description            = "Config presets for Renovate"
  enable_actions         = false
  required_status_checks = []
}
