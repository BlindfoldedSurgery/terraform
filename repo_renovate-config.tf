module "renovate_config_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v11.1.0"
  name        = "renovate-config"
  description = "Config presets for Renovate"

  include_required_meta_checks = false

  required_status_checks = [
    "build-renovate-image / build",
    "validate (default.json) / validate",
    "validate (java.json) / validate",
    "validate (pub.json) / validate",
    "validate (python.json) / validate",
  ]
}
