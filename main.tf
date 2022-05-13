resource "google_service_account" "sa-demo" {
  count        = var.instance_count
  account_id   = "sa-demo${count.index}"
  display_name = "Service Account pour test de demo"
}

resource "google_compute_instance" "instance" {
  count        = var.instance_count
  name         = "${var.instance_name}${count.index}"
  machine_type = "f1-micro"
  zone         = var.zone_name

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }

  network_interface {
    #maybe you don't have a default network on your projet.
    #in this case use for example instead: subnetwork  = "projects/MYPROJECT/regions/MYREGION/subnetworks/MYSUBNETNAME"
    network = "default"

    #remove that if you don't want public IP for your instance
    access_config {
      // Ephemeral public IP
    }
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.sa-demo[count.index].email
    scopes = ["cloud-platform"]
  }
}
