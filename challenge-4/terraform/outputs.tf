output "vm_ip_address" {
  value = openstack_compute_instance_v2.vm.access_ip_v4
}
