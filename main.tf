terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">4.35.0"
    }
  }
}

provider "google" {
  # Configuration options
}

resource "google_storage_bucket" "tee-auto-expire" {
  name          = "tee-auto-bucket"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}
