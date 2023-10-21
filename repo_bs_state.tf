module "bs_state_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.0.1"
  name        = "bs-state"
  description = "State package for Python"
  required_status_checks = [
    "test (3.11) / test",
    "lint (3.11) / lint",
    "codecov/patch",
    "SonarCloud Code Analysis",
  ]
}
