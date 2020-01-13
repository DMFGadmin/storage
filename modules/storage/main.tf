resource "google_storage_bucket" "afrl-bucket-001" {
  name     = "afrl-raw-data-ingest-001"
  location = "US"
  project = var.project
  storage_class = "STANDARD"
  lifecycle_rule {
    action {
      type = "setStorageClass"
      storage_class = "Nearline"
    }
    condition {
      age = "360"
    }
  }
}