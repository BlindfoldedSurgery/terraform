module "bs_state_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name        = "bs-state"
  description = "State package for Python"
  required_status_checks = [
    "test (3.11)",
    "lint (3.11)",
    "codecov/patch",
    "SonarCloud Code Analysis",
  ]
  create_default_branch = false
}
