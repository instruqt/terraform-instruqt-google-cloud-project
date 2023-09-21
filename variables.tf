variable "region" {
  type = string
  default = "europe-west1"
  description = "The region to create the resources in"
}

variable "credentials" {
  type = string
  description = "The credentials to use to authenticate with Google Cloud"
}

variable "googleworkspace_impersonated_user_email" {
  type = string
  description = "The email of the user to impersonate"
}

variable "googleworkspace_consumer_id" {
  type = string
  default = "googleworkspace"
  description = "The consumer id of the Google Workspace account"
}

variable "googleworkspace_org_unit_path" {
  type = string
  nullable = true
  default = null
  description = "The org unit path to create the User in"
}

variable "parent_organization_domain" {
  type = string
  description = "The domain of the parent organization"
}

variable "project_folder_name" {
  type = string
  description = "The name of the folder to create the project in"
}

variable "billing_account_id" {
  type = string
  description = "The id of the billing account"
}

variable "sandbox_id" {
  type = string
  description = "The id of the sandbox"
}

variable "project" {
  type = string
  description = "The name of the parent Google Cloud project"
}

variable "project_name" {
  type = string
  description = "The name of the new Google Cloud project"
}

variable "project_prefix" {
  type = string
  default = "s"
  description = "The prefix to use for the new Google Cloud project"
}

variable "services" {
  type = list(string)
  description = "The list of services to enable"
}

variable "roles" {
  type = list(string)
  description = "The list of roles to grant"
}
