resource "google_container_cluster" "gke-cluster" {
    name = "my-gke-cluster"
    location = var.region

    remove_default_node_pool = true
    initial_node_count = 1
}

resource "google_container_node_pool" "nodes" {
    name = "node-pool"
    cluster = google_container_cluster.gke.name
    location = var.region

    node_config {
        machine_type = "e2-medium"
    }

    node_count = 3
}