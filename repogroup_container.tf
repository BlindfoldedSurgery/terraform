module "container_flutter_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v11.1.0"
  name        = "container-flutter"
  description = "Container images with Flutter"

  is_archive_prepared = true
  is_archived         = true
  is_public           = false
}

module "container_poetry_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v11.1.0"
  name        = "container-poetry"
  description = "Container images with Poetry"

  is_archive_prepared = true
  is_archived         = true
  is_public           = false
}
