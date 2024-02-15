terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.6.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials)
  project     = var.project
  region      = var.region
}


resource "google_storage_bucket" "data_lake_bucket" {
  name          = var.gcs_bucket_name
  location      = var.location
  force_destroy = true


  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

resource "google_storage_bucket_object" "bucket_dir" {
  name          = var.gcs_bucket_dir_name
  content       = " "
  bucket        = "${google_storage_bucket.data_lake_bucket.name}"
}


resource "google_bigquery_dataset" "bq_dataset" {
  dataset_id = var.bq_dataset_name
  location   = var.location
}