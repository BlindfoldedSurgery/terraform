module "actions_tanka_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.0.1"
  name        = "actions-tanka"
  description = "Github action for tanka interaction"

  is_archive_prepared = true
  is_archived         = true
  is_public           = false
}
