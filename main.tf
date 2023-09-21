data "google_organization" "parent" {
  domain = var.parent_organization_domain
}

data "google_active_folder" "folder" {
  display_name = var.project_folder_name
  parent       = data.google_organization.parent.name
}
