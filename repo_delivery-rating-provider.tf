module "delivery_rating_provider_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.4.0"
  name                   = "delivery-rating-provider"
  description            = "provide suggestions for a delivery place to try"
  required_status_checks = []
  blocked_branches       = []
  protect_default_branch = false
  enable_actions         = false
  is_archived            = true
  is_public              = false
  enable_argocd_rules    = false
}
