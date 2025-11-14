module "isso_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v11.0.0"
  name        = "isso"
  description = "isso comments for eiersaft.me"

  is_archive_prepared = true
  is_archived         = true
  is_public           = false
}
