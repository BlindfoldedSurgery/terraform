module "renovate_config_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.3"
  name        = "renovate-config"
  description = "Config presets for Renovate"
  required_status_checks = [
    "build-renovate-image / build",
    "validate (default.json) / validate",
    "validate (java.json) / validate",
    "validate (pub.json) / validate",
    "validate (python.json) / validate",
  ]
}
