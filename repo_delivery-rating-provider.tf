module "delivery_rating_provider_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.2.0"
  name        = "delivery-rating-provider"
  description = "provide suggestions for a delivery place to try"
  required_status_checks = [
    "build-container-image / build",
  ]
  is_archived         = true
  enable_argocd_rules = false
}
