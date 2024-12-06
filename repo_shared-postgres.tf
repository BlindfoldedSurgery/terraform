module "shared-postgres_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.0"
  name                   = "shared-postgres"
  description            = "shared postgres database for several use-cases (e.g. staging environments)"
  required_status_checks = []
  blocked_branches       = []
  protect_default_branch = false
  enable_actions         = false
  is_archived            = true
  is_public              = false
  enable_argocd_rules    = false
}
