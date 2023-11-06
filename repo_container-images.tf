module "container_images_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.3.0"
  name                   = "poetry-container"
  description            = "[Experimental] Container images with Poetry"
  required_status_checks = []
}
