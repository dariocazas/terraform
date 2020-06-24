resource "mongodbatlas_database_user" "myprj" {
  username           = "test-acc-username"
  password           = "test-acc-password"
  project_id         = mongodbatlas_project.myprj.id
  auth_database_name = "admin"

  roles {
    role_name     = "readWrite"
    database_name = "dbforApp"
  }

  roles {
    role_name     = "readAnyDatabase"
    database_name = "admin"
  }

  labels {
    key   = "My Key"
    value = "My Value"
  }
}