terraform {
  required_version = "1.8.2"

  backend "gcs" {
    bucket = "prep-terraform-state"
    prefix = "blindfoldedsurgery"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.2.0"
    }
    google = {
      version = "~> 5.26.0"
    }
  }
}

provider "github" {
  owner = "blindfoldedSurgery"
}

provider "google" {
  project = "prep-telegram-bots"
  region  = "europe-west3"
}
