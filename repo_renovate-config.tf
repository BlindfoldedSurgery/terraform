module "renovate_config_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name                   = "renovate-config"
  description            = "Config presets for Renovate"
  enable_actions         = false
  required_status_checks = []
  create_default_branch  = false
}
