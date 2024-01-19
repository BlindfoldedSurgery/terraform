module "shared-postgres_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v6.0.0"
  name        = "shared-postgres"
  description = "shared postgres database for several use-cases (e.g. staging environments)"
  required_status_checks = [
    "lint",
  ]
}
