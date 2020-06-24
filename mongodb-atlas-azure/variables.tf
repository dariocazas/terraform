variable organization_id {
  description = "Pass from environment var with name TF_VAR_organization_id. The value can take from MongoDB Atlas Organization Settings"
  type = string
}

variable team_owner_id {
  description = "Pass from environment var with name TF_VAR_team_owner_id. The value can take from MongoDB Atlas Project Access Manager. It can be automated using mongodbatlas_team resource"
  type = string
}

variable ip_whitelist {
  description = "Pass from environemnt var with name TF_VAR_ip_whitelist. The value can take with $(dig +short myip.opendns.com @resolver1.opendns.com)"
}

variable project {
  description = "Relative of MongoDB project"
  type = map(string)
}

variable atlas {
  description = "Relative to MongoDB Atlas configuration"
  type = map(string)
}

variable cloud_provider {
  description = "Relative to Azure (as a cloud provider)"
  type = map(string)
}