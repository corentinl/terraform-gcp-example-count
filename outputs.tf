output "internal_instance_ip_addr" {
  value = google_compute_instance.instance01.network_interface.0.network_ip
}
