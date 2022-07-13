
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
  purpose  = "ASYMMETRIC_SIGN"
  key_ring = data.google_kms_key_ring.keyring-1.id
  version_template {
    algorithm = "RSA_SIGN_PSS_2048_SHA256"
  }

  lifecycle {
    prevent_destroy = false
  }
}

resource "google_kms_crypto_key" "cryptokey-100" {
  name     = "cryptokey-100"
  purpose  = "ASYMMETRIC_SIGN"
  key_ring = data.google_kms_key_ring.keyring-1.id
  version_template {
    algorithm = "RSA_SIGN_PSS_2048_SHA256"
  }

  lifecycle {
    prevent_destroy = false
  }
}

resource "google_kms_crypto_key" "cryptokey-101" {
  name     = "cryptokey-101"
  purpose  = "ASYMMETRIC_SIGN"
  key_ring = data.google_kms_key_ring.keyring-1.id
  version_template {
    algorithm = "RSA_SIGN_PSS_3072_SHA256"
  }

  lifecycle {
    prevent_destroy = false
  }
}

resource "google_kms_crypto_key" "cryptokey-102" {
  name     = "cryptokey-102"
  purpose  = "ASYMMETRIC_SIGN"
  key_ring = data.google_kms_key_ring.keyring-1.id
  version_template {
    algorithm = "RSA_SIGN_PSS_4096_SHA256"
  }

  lifecycle {
    prevent_destroy = false
  }
}

resource "google_kms_crypto_key" "cryptokey-103" {
  name     = "cryptokey-103"
  purpose  = "ASYMMETRIC_SIGN"
  key_ring = data.google_kms_key_ring.keyring-1.id
  version_template {
    algorithm = "RSA_SIGN_PKCS1_2048_SHA256"
  }

  lifecycle {
    prevent_destroy = false
  }
}

resource "google_kms_crypto_key" "cryptokey-104" {
  name     = "cryptokey-104"
  purpose  = "ASYMMETRIC_SIGN"
  key_ring = data.google_kms_key_ring.keyring-1.id
  version_template {
    algorithm = "RSA_SIGN_PKCS1_3072_SHA256"
  }

  lifecycle {
    prevent_destroy = false
  }
}

resource "google_kms_crypto_key" "cryptokey-105" {
  name     = "cryptokey-105"
  purpose  = "ASYMMETRIC_SIGN"
  key_ring = data.google_kms_key_ring.keyring-1.id
  version_template {
    algorithm = "RSA_SIGN_PKCS1_4096_SHA256"
  }

  lifecycle {
    prevent_destroy = false
  }
}



