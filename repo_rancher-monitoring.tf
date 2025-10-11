module "rancher-monitoring_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.0.1"
  name        = "rancher-monitoring"
  description = "deploy rancher monitoring"

  is_archive_prepared = true
  is_archived         = true
  is_public           = false
}
