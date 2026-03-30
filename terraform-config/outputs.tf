output "vm_external_ip" {
    value = google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip
}

output "kubernetes_cluster_name" {
    value = google_container_cluster.gke-cluster.name
}