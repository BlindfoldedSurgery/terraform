module "actions_tanka_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v5.0.0"
  name        = "actions-tanka"
  description = "Github action for tanka interaction"
  required_status_checks = [
    "test"
  ]
}
