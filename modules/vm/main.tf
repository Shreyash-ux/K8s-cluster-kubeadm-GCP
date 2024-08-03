
resource "google_compute_instance" "master" {
  name         = "mastervm"
  machine_type = "n1-standard-4"
  zone         = "us-central1-c"

  tags = var.mastertags

  boot_disk {
    initialize_params {
      image = "ubuntu-2404-noble-amd64-v20240726"
      size = 20
    }
  }


  network_interface {
    network = var.vpc
    subnetwork = var.subnetwork[0]
    access_config {
      // Ephemeral public IP
    }
  }
  metadata_startup_script = file("../scripts/master.sh")
}


resource "google_compute_instance" "worker" {
  name         = "workervm"
  machine_type = "n1-standard-2"
  zone         = "us-central1-c"

  tags = var.workertags

  boot_disk {
    initialize_params {
      image = "ubuntu-2404-noble-amd64-v20240726"
      size = 15
    }
  }


  network_interface {
    network = var.vpc
    subnetwork = var.subnetwork[1]
    access_config {
      // Ephemeral public IP
    }
  }
  metadata_startup_script = file("../scripts/common.sh")

}