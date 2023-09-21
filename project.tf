resource "random_string" "project_id" {
  length  = 8
  upper   = false
  special = false
  numeric = false
}

resource "google_project" "project" {
  project_id      = "${var.project_prefix}-${var.sandbox_id}-${random_string.project_id.result}"
  name            = var.project_name
  billing_account = var.billing_account_id
  folder_id       = data.google_active_folder.folder.name

  labels = {
    sandbox    = var.sandbox_id
  }
}

resource "google_project_service" "service" {
  for_each = var.services == null ? [] : toset(var.services)

  service = each.key

  project            = google_project.project.project_id
  disable_on_destroy = false
}
