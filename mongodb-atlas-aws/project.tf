resource "mongodbatlas_project" "myprj" {
  name   = var.project.name
  org_id = var.organization_id

  teams {
    team_id    = var.team_owner_id
    role_names = ["GROUP_OWNER"]
  }

}

resource "mongodbatlas_project_ip_whitelist" "myprj" {
  project_id = mongodbatlas_project.myprj.id
  ip_address = var.ip_whitelist
  comment    = "Connect from any IP"
}