module "container_flutter_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.1"
  name        = "container-flutter"
  description = "Container images with Flutter"

  is_archive_prepared = true
  is_archived         = true
  is_public           = false
}

module "container_poetry_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.1"
  name                                   = "container-poetry"
  description                            = "Container images with Poetry"
  allow_default_branch_protection_bypass = false
  required_status_checks = [
    "check / check",
    "post-build-container-image",
  ]
}
