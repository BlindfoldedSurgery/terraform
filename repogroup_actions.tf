module "actions_container_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.3.0"
  name                   = "actions-container"
  description            = "Reusable Container Workflows for GitHub Actions"
  required_status_checks = []
}


module "actions_python_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.3.0"
  name                   = "actions-python"
  description            = "Reusable Python Workflows for GitHub Actions"
  required_status_checks = []
}
