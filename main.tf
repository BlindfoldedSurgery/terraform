terraform {
  required_version = "1.9.4"

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
      version = "~> 5.40.0"
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
