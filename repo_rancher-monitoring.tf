module "rancher-monitoring_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.1.0"
  name        = "rancher-monitoring"
  description = "deploy rancher monitoring"
  required_status_checks = [
    "lint",
  ]
  is_archived = true
}
