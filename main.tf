data "google_kms_key_ring" "keyring-1" {
  name     = "keyring-1"
  location = "us-central1"
  project = "modular-scout-345114"
}

resource "google_kms_crypto_key" "cryptokey-22" {
  name     = "cryptokey-22"
  key_ring = data.google_kms_key_ring.keyring-1.id
  rotation_period = "100000s"

  lifecycle {
    prevent_destroy = false
  }
}

data "google_kms_crypto_key_version" "crypto_key_version" {
  crypto_key = google_kms_crypto_key.cryptokey-22.id
}