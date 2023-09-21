resource "google_project_iam_member" "account_member" {
  project = google_project.project.project_id
  member  = "serviceAccount:${google_service_account.account.email}"

  for_each = var.roles == null ? [] : toset(var.roles)
  role = each.key
}

resource "google_project_iam_member" "user_member" {
  project = google_project.project.project_id
  member  = "user:${googleworkspace_user.user.primary_email}"

  for_each = var.roles == null ? [] : toset(var.roles)
  role = each.key
}
