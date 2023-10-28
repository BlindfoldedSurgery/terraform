module "renovate_config_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.1.3"
  name        = "renovate-config"
  description = "Config presets for Renovate"
  required_status_checks = [
    "validate",
  ]
}
