module "container_flutter_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.4.1"
  name                                   = "container-flutter"
  description                            = "Container images with Flutter"
  allow_default_branch_protection_bypass = false
  required_status_checks = [
    "check-commits / check",
    "post-build-container-image",
  ]
}

module "container_poetry_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.4.1"
  name                                   = "container-poetry"
  description                            = "Container images with Poetry"
  allow_default_branch_protection_bypass = false
  required_status_checks = [
    "check / check",
    "post-build-container-image",
  ]
}
