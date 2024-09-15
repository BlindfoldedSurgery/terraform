module "rancher-monitoring_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.2"
  name                   = "rancher-monitoring"
  description            = "deploy rancher monitoring"
  required_status_checks = []
  blocked_branches       = []
  protect_default_branch = false
  enable_actions         = false
  is_archived            = true
  is_public              = false
  enable_argocd_rules    = false
}
