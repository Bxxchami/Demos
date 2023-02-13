terraform {
    required_providers {
        google = {
            project = "{{YOUR GCP PROJECT}}"
            region  = "us-central1"
            zone    = "us-central1-c"
        }
#        confluent = {
#           source = "confluentinc/confluent"
#           version = "1.23.0"
        }
    }
}