// Provider

provider "google" {
  credentials = file(var.sa_token)
  project     = var.project_id
  region      = var.region
}