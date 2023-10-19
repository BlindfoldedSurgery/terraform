module "actions_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name                   = "actions"
  description            = "Reusable GitHub Actions Workflows"
  required_status_checks = []
}
