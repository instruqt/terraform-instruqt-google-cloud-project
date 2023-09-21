resource "google_service_account" "account" {
  depends_on = [google_project.project]

  project      = google_project.project.project_id
  account_id   = "service-account"
  display_name = "Service Account"
}

resource "google_service_account_key" "account_key" {
  service_account_id = google_service_account.account.name
}
