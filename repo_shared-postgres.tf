module "shared-postgres_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v11.0.0"
  name        = "shared-postgres"
  description = "shared postgres database for several use-cases (e.g. staging environments)"

  is_archive_prepared = true
  is_archived         = true
  is_public           = false
}
