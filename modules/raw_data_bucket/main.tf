resource "google_storage_bucket" "afrl-bucket" {
  name     = var.name
  location = "US"
  project = var.project
  storage_class = "STANDARD"
  lifecycle_rule {
    action {
      type = "SetStorageClass"
      storage_class = "NEARLINE"
    }
    condition {
      age = "360"
    }
  }
  lifecycle_rule {
    action {
      type = "SetStorageClass"
      storage_class = "COLDLINE"
    }
    condition {
      age   =  "1500"
      matches_storage_class = ["NearLine"]
    }
  }
}
