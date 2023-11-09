terraform {
  required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.51.1"
    }
  }
}

resource "openstack_compute_instance_v2" "vm" {
  name            = var.vm_name
  image_name      = var.vm_image_name
  flavor_name     = var.vm_flavor_name
  key_pair        = var.vm_key_pair
  security_groups = ["default", var.vm_security_group]

  network {
    name = var.vm_network
  }
}
