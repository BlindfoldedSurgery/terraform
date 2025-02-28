terraform {
  required_version = "1.11.0"

  backend "gcs" {
    bucket = "prep-terraform-state"
    prefix = "blindfoldedsurgery"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.6.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 6.23.0"
    }
  }
}

locals {
  gh_app_id = "Iv23liSYP04ZCAeQ17ph"
}

provider "github" {
  owner = "blindfoldedSurgery"
  app_auth {
    id              = local.gh_app_id
    pem_file        = null
    installation_id = "54328913"
  }
}

provider "google" {
  project = "prep-telegram-bots"
  region  = "europe-west3"
}
