resource "google_container_cluster" "gke-cluster" {
    name = "my-gke-cluster"
    location = var.zone

    remove_default_node_pool = true
    initial_node_count = 1
}

resource "google_container_node_pool" "nodes" {
    name = "node-pool"
    cluster = google_container_cluster.gke-cluster.name
    location = var.zone

    node_config {
        machine_type = "e2-small"
        disk_type = "pd-standard"
        disk_size_gb = 20
        image_type = "COS_CONTAINERD"
    }

    node_count = 2
}