module "bs_config_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name        = "bs-config"
  description = "Config package for Python"
  required_status_checks = [
    "test (3.11)",
    "test (3.12)",
    "lint (3.11)",
    "lint (3.12)",
    "codecov/patch",
    "SonarCloud Code Analysis",
  ]
  create_default_branch = false
}
