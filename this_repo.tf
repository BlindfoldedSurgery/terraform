module "self_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.3"
  name   = "terraform"
  required_status_checks = [
    "fmt",
    "validate",
    "plan",
  ]
  description    = "Organization infrastructure, including GitHub repositories"
  enable_actions = true
}

resource "google_service_account" "self" {
  account_id   = "github-actions-ci-bs"
  display_name = "GitHub Actions BlindfoldedSurgery"
}

resource "google_project_iam_member" "self_roles" {
  for_each = toset([
    "roles/iam.securityReviewer",
    "roles/iam.serviceAccountViewer",
    "roles/storage.objectAdmin",
  ])
  project = google_service_account.self.project
  role    = each.key
  member  = google_service_account.self.member
}

resource "google_service_account_key" "self" {
  service_account_id = google_service_account.self.account_id
}

resource "github_actions_secret" "self_gsa" {
  repository      = module.self_repo.name
  secret_name     = "GOOGLE_SA_JSON"
  plaintext_value = base64decode(google_service_account_key.self.private_key)
}
