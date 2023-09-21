resource "random_password" "password" {
  length  = 32
  special = false
  upper   = false
}

resource "googleworkspace_user" "user" {
  primary_email              = "${var.project_name}-${random_string.project_id.result}@${var.parent_organization_domain}"
  password                   = random_password.password.result
  change_password_at_next_login = false

  name {
    family_name = var.sandbox_id
    given_name  = var.sandbox_id
  }

  lifecycle {
    ignore_changes = [password]
  }

  org_unit_path = var.googleworkspace_org_unit_path
}
