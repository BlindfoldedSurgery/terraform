module "container_images_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.3.0"
  name                                   = "container-images"
  description                            = "[Experimental] Base container images"
  required_status_checks = []
}
