
provider "google" {
  credentials = "./credentials.json"
  project     = "ashish-sandbox-2020"
  region  = "us-central1"
  version = "~> 3.0"
}