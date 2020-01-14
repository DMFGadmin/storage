module "storage_raw_ingest" {
  source          = "./modules/storage"
  project = var.service_project_1
  name    = var.bd_raw_ingest_bucket

}