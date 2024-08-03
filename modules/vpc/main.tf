resource "google_compute_network" "vpc_network" {
  project                 = var.project
  name                    = "k8s"
  auto_create_subnetworks = false
}