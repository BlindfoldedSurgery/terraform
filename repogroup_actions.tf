module "actions_python_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.1.0"
  name                   = "actions-python"
  description            = "Reusable Python GitHub Actions Workflows"
  required_status_checks = []
}
