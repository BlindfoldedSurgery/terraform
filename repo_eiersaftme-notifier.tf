module "eiersaftme-notifier_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v5.0.0"
  name        = "eiersaftme-notifier"
  description = "notifies telegram chat when a new eiersaft.me episode releases"
  required_status_checks = [
    "lint",
    "build-container-image",
  ]
}
