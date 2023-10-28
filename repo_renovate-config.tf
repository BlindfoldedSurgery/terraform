module "renovate_config_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.3.0"
  name        = "renovate-config"
  description = "Config presets for Renovate"
  required_status_checks = [
    "validate (default.json)",
    "validate (java.json)",
    "validate (pub.json)",
    "validate (python.json)",
  ]
}
