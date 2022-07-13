
provider "google" {
    //credentials = file ("../composer-sa.json")
    project = "modular-scout-345114"
}
data "google_kms_key_ring" "keyring-1" {
  name     = "keyring-1"
  location = "us-central1"
  project = "modular-scout-345114"
}

resource "google_kms_crypto_key" "cryptokey-25" {
  name     = "cryptokey-25"
  key_ring = data.google_kms_key_ring.keyring-1.id
  version_template {
    algorithm = "RSA_PSS_2048_SHA256"
  }

  lifecycle {
    prevent_destroy = false
  }
}


