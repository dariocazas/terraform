resource "mongodbatlas_cluster" "myprj" {
  project_id   = mongodbatlas_project.myprj.id
  name         = "cluster-${var.project.area}-${var.project.name}-${var.project.env}-${var.cloud_provider.region_short_name}"
  num_shards   = 1

  replication_factor           = 3
  provider_backup_enabled      = false
  auto_scaling_disk_gb_enabled = false
  mongo_db_major_version       = var.atlas.major_version

  //Provider Settings "block"
  provider_name               = "AZURE"
  provider_disk_type_name     = var.cloud_provider.disk_type_name
  provider_instance_size_name = var.atlas.instance_size
  provider_region_name        = var.cloud_provider.region_name
}