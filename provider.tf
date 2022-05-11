terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.19.0"
    }
  }
}

provider "google" {
  credentials = file("<REPLACE_ME_WITH_SERVICE_ACCOUNT_KEY_PATH>.json")
  project     = "<REPLACE_ME_WITH_GCP_PROJECT_ID>"

}
