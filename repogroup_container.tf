module "container_flutter_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.1.3"
  name                                   = "container-flutter"
  description                            = "Container images with Flutter"
  allow_default_branch_protection_bypass = false
  required_status_checks = [
    "check-commits / check",
    "build-container-image (3.19, amd64) / build",
    "build-container-image (3.19, arm64) / build",
    "build-container-image (3.22, amd64) / build",
    "build-container-image (3.22, arm64) / build",
    "build-container-image (3.24, amd64) / build",
    "build-container-image (3.24, arm64) / build",
    "build-container-image (3.27, amd64) / build",
    "build-container-image (3.27, arm64) / build",
  ]
}

module "container_poetry_repo" {
  source                                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.1.3"
  name                                   = "container-poetry"
  description                            = "Container images with Poetry"
  allow_default_branch_protection_bypass = false
  required_status_checks = [
    "check / check",
    "build-container-image (3.11, bullseye, installer, amd64) / build",
    "build-container-image (3.12, bullseye, installer, amd64) / build",
    "build-container-image (3.13, bullseye, installer, amd64) / build",
    "build-container-image (3.11, bookworm, installer, amd64) / build",
    "build-container-image (3.12, bookworm, installer, amd64) / build",
    "build-container-image (3.13, bookworm, installer, amd64) / build",
    "build-container-image (3.11, bullseye, pipx, amd64) / build",
    "build-container-image (3.12, bullseye, pipx, amd64) / build",
    "build-container-image (3.13, bullseye, pipx, amd64) / build",
    "build-container-image (3.11, bookworm, pipx, amd64) / build",
    "build-container-image (3.12, bookworm, pipx, amd64) / build",
    "build-container-image (3.13, bookworm, pipx, amd64) / build",
    "build-container-image (3.11, bullseye, installer, arm64) / build",
    "build-container-image (3.12, bullseye, installer, arm64) / build",
    "build-container-image (3.13, bullseye, installer, arm64) / build",
    "build-container-image (3.11, bookworm, installer, arm64) / build",
    "build-container-image (3.12, bookworm, installer, arm64) / build",
    "build-container-image (3.13, bookworm, installer, arm64) / build",
    "build-container-image (3.11, bullseye, pipx, arm64) / build",
    "build-container-image (3.12, bullseye, pipx, arm64) / build",
    "build-container-image (3.13, bullseye, pipx, arm64) / build",
    "build-container-image (3.11, bookworm, pipx, arm64) / build",
    "build-container-image (3.12, bookworm, pipx, arm64) / build",
    "build-container-image (3.13, bookworm, pipx, arm64) / build",
  ]
}
