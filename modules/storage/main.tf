resource "google_storage_bucket" "afrl-bucket" {
  name     = var.name
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
