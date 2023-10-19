module "isso_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.0.0"
  name        = "isso"
  description = "isso comments for eiersaft.me"
  required_status_checks = [
    "lint",
    "build-container-image",
  ]
}
