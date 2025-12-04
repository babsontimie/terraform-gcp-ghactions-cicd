


resource "google_storage_bucket" "tee-auto-expire" {
  name          = "tee-auto-bucket"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}

