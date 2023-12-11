terraform {
  required_version = "1.6.6"

  backend "gcs" {
    bucket = "prep-terraform-state"
    prefix = "blindfoldedsurgery"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.42.0"
    }
    google = {
      version = "~> 5.9.0"
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
