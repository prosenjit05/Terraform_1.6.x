provider "google" {
  project = "test-project-1-406807"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket" "bucket" {
  name                        = "test-project-1-406807-my-bucket-pro"
  location                    = "us-central1"
  uniform_bucket_level_access = true
}
