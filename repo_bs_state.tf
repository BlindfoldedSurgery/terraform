module "bs_state_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v3.0.0"
  name        = "bs-state"
  description = "State package for Python"
  required_status_checks = [
    "test (3.11)",
    "lint (3.11)",
    "codecov/patch",
    "SonarCloud Code Analysis",
  ]
}
