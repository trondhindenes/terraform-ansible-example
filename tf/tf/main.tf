provider "google" {
  project     = "global-tfstate"
  region      = "europe-west4"
}

variable "the_size" {
  type = number
}

variable "google_project_name" {
  type = string
}

resource "google_storage_bucket" "static-site" {
  name          = "superawesome-bucket-${var.the_size}"
  location      = "EU"
  force_destroy = true
  project       = var.google_project_name
}

output "the_size_output" {
  value = var.the_size
}