resource "google_compute_instance" "vm_instance" {
    name = "my-instance"
    machine_type = "n2-standard-2"
    zone = var.zone
    tags = ["foo", "bar"]

    boot_disk {
        initialize_params {
            image = "ubuntu-os-cloud/ubuntu-2404-lts"
            label = {
                my_label = "value"
            }
        }
    }

    scratch_disk {
        interface = "NVME"
    }

    network_interface {
        network = "default"
        access_config {
        }
    }

    metadata = {
        foo = "bar"
    }

    metadata_startup_script = ""

    service_account {
        email = 
        scopes = ["cloud-platform"]
    }
}