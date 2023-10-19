module "actions_python_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name                   = "actions-python"
  description            = "Reusable Python GitHub Actions Workflows"
  required_status_checks = []
}
