module "actions_tanka_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.3.0"
  name                   = "actions-tanka"
  description            = "Github action for tanka interaction"
  required_status_checks = []
  blocked_branches       = []
  protect_default_branch = false
  enable_actions         = false
  is_archived            = true
  is_public              = false
  enable_argocd_rules    = false
}
