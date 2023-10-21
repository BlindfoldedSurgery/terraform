module "bs_config_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.1.0"
  name        = "bs-config"
  description = "Config package for Python"
  required_status_checks = [
    "test (3.11) / test",
    "test (3.12) / test",
    "lint (3.11) / lint",
    "lint (3.12) / lint",
    "codecov/patch",
    "SonarCloud Code Analysis",
  ]
}
