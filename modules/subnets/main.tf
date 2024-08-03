resource "google_compute_subnetwork" "subnet1" {
  name          = "k8subnet1"
  ip_cidr_range = "10.0.0.0/16"
  region        = "us-central1"
  network       = var.network
}
resource "google_compute_subnetwork" "subnet2" {
  name          = "k8subnet2"
  ip_cidr_range = "10.1.0.0/16"
  region        = "us-central1"
  network       = var.network
}