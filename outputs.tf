output "project_id" {
  value = google_project.project.project_id
}

output "project_name" {
  value = google_project.project.name
}

output "user_email" {
  value = googleworkspace_user.user.primary_email
}

output "user_password" {
  sensitive = true
  value = random_password.password.result
}

output "service_account_email" {
  value = google_service_account.account.email
}

output "service_account_key" {
  sensitive = true
  value = google_service_account_key.account_key.private_key
}
