module "eiersaftme-notifier_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.1.0"
  name        = "eiersaftme-notifier"
  description = "notifies telegram chat when a new eiersaft.me episode releases"
  required_status_checks = [
    "lint",
    "build-container-image",
  ]
  is_archived = true
}
