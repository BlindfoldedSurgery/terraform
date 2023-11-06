module "container_poetry_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.3.0"
  name                                   = "container-poetry"
  description                            = "[Experimental] Container images with Poetry"
  allow_default_branch_protection_bypass = false
  required_status_checks = [
    "check / check",
    "build-container-image (3.11, bullseye, installer) / build",
    "build-container-image (3.12, bullseye, installer) / build",
    "build-container-image (3.11, bookworm, installer) / build",
    "build-container-image (3.12, bookworm, installer) / build",
    "build-container-image (3.11, bullseye, pipx) / build",
    "build-container-image (3.12, bullseye, pipx) / build",
    "build-container-image (3.11, bookworm, pipx) / build",
    "build-container-image (3.12, bookworm, pipx) / build",
  ]
}
