variable "vm_name" {
  default = "web-server-host"
}

variable "vm_image_name" {
  default = "ubuntu-22.04"
}

variable "vm_flavor_name" {
  default = "small"
}

variable "vm_key_pair" {
  default = "key-pair"
}

variable "vm_security_group" {
  default = "my-group"
}

variable "vm_network" {
  default = "ostack2"
}

variable "vm_ssh_key_file" {
  default = "/home/user/.ssh/openstack.key"
}

variable "vm_ssh_user" {
  default = "ubuntu"
}
