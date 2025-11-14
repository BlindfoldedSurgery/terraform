module "delivery_rating_provider_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v11.0.0"
  name        = "delivery-rating-provider"
  description = "provide suggestions for a delivery place to try"

  is_archive_prepared = true
  is_archived         = true
  is_public           = false
}
