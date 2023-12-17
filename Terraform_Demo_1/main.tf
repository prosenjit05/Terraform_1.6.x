provider "google" {
  project     = "test-project-1-406807"
  region      = "asia-south1-a"
}

provider "google" {
  alias = "delhi"
  project     = "test-project-1-406807"
  region      = "asia-south2-a"
}

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      # Uncomment and set a specific version if needed
      # version = "5.9.0"
      configuration_aliases = [ google.delhi ]
    }
  }
}



