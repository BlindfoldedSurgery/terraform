module "bs_config_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name        = "bs-config"
  description = "[WIP] Config package for Python"
  required_status_checks = [
    "test (3.10)",
    "test (3.11)",
    "test (3.12-rc)",
    "lint (3.10)",
    "lint (3.11)",
    "lint (3.12-rc)",
    "codecov/patch",
  ]
}
