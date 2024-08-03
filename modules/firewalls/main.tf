resource "google_compute_firewall" "ssh" {
  name    = "k8s-ssh"
  network = var.network
  allow {
    protocol = "tcp"
    ports    = ["22","179","6443"]
  }
  source_ranges = [ "0.0.0.0/0" ]

  target_tags = ["k8s-ssh"]
}
resource "google_compute_firewall" "cni" {
  name    = "k8s-controlnetworkinterface"
  network = var.network
  allow {
    protocol = "tcp"
    ports    = ["179"]
  }
  source_ranges = [ "0.0.0.0/0" ]

  target_tags = ["k8s-cni"]
}

resource "google_compute_firewall" "http" {
  name    = "k8s-http"
  network = var.network
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  source_ranges = [ "0.0.0.0/0" ]

  target_tags = ["k8s-http"]
}
resource "google_compute_firewall" "https" {
  name    = "k8s-https"
  network = var.network
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
  source_ranges = [ "0.0.0.0/0" ]

  target_tags = ["k8s-https"]
}

resource "google_compute_firewall" "internal_connection" {
    name    = "k8s-icmp"
    network = var.network
    allow {
    protocol = "icmp"
  }
  source_ranges = [ "0.0.0.0/0" ]

  target_tags = ["k8s-icmp"]
  
}




resource "google_compute_firewall" "k8sfirst" {
    name    = "k8s-api-server"
    network = var.network
    allow {
    protocol = "tcp"
    ports    = ["6443"]
  }
  source_ranges = [ "0.0.0.0/0" ]

  target_tags = ["k8s-first"]
  
}
resource "google_compute_firewall" "k8ssecond" {
    name    = "k8s-etcd-client"
    network = var.network
    allow {
    protocol = "tcp"
    ports    = ["2379-2380"]
  }
  source_ranges = [ "0.0.0.0/0" ]

  target_tags = ["k8s-second"]
  
}
resource "google_compute_firewall" "k8sthird" {
    name    = "k8s-kubelet-api"
    network = var.network
    allow {
    protocol = "tcp"
    ports    = ["10250"]
  }
  source_ranges = [ "0.0.0.0/0" ]

  target_tags = ["k8s-third"]
  
}
resource "google_compute_firewall" "k8sfourth" {
    name    = "k8s-kube-scheduler"
    network = var.network
    allow {
    protocol = "tcp"
    ports    = ["10259"]
  }
  source_ranges = [ "0.0.0.0/0" ]

  target_tags = ["k8s-fourth"]
  
}
resource "google_compute_firewall" "k8sfifth" {
    name    = "k8s-kube-controller-manager"
    network = var.network
    allow {
    protocol = "tcp"
    ports    = ["10257"]
  }
  source_ranges = [ "0.0.0.0/0" ]

  target_tags = ["k8s-fifth"]
  
}
resource "google_compute_firewall" "k8ssixth" {
    name    = "k8s-kube-proxy"
    network = var.network
    allow {
    protocol = "tcp"
    ports    = ["10256"]
  }
  source_ranges = [ "0.0.0.0/0" ]

  target_tags = ["k8s-sixth"]
  
}
resource "google_compute_firewall" "k8sseventh" {
    name    = "k8s-nodeport-services"
    network = var.network
    allow {
    protocol = "tcp"
    ports    = ["30000-32767"]
  }
  source_ranges = [ "0.0.0.0/0" ]

  target_tags = ["k8s-seventh"]
  
}

resource "google_compute_firewall" "k8seighth" {
    name    = "k8s-outbond"
    network = var.network
    direction = "EGRESS"
    allow {
    protocol = "all"
  }
  source_ranges = [ "0.0.0.0/0" ]

  target_tags = ["k8s-outbond"]
  
}