module "actions_tanka_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.0"
  name        = "actions-tanka"
  description = "Github action for tanka interaction"

  is_archive_prepared = true
  is_archived         = true
  is_public           = false
}
