module "isso_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v6.0.0"
  name        = "isso"
  description = "isso comments for eiersaft.me"
  required_status_checks = [
    "lint",
    "build-container-image",
  ]
  is_archived = true
}
