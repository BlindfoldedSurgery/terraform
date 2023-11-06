module "container_poetry_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.3.0"
  name                   = "container-poetry"
  description            = "[Experimental] Container images with Poetry"
  required_status_checks = []
}
