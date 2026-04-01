resource "google_compute_instance" "vm_instance" {
    name = "my-instance"
    machine_type = "e2-standard-2"
    zone = var.zone
    tags = ["foo", "bar"]

    boot_disk {
        initialize_params {
            image = "ubuntu-os-cloud/ubuntu-2204-lts"
        }
    }

    network_interface {
        network = "default"
        access_config {
        }
    }
}