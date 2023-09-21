terraform {
  required_providers {
    googleworkspace = "0.7.0"
    google          = "4.83.0"
    random          = "3.5.1"
  }
}

provider "google" {
  region      = var.region
  credentials = var.credentials
  project     = var.project
}

provider "googleworkspace" {
  credentials             = var.credentials
  customer_id             = var.googleworkspace_consumer_id
  impersonated_user_email = var.googleworkspace_impersonated_user_email
  oauth_scopes            = [
    "https://www.googleapis.com/auth/admin.directory.user",
  ]
}
