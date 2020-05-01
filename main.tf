provider "openstack" {
}

resource "openstack_compute_instance_v2" "instances" {
  name        = "vm-teste"
  count       = "1"
  flavor_name = "small-1"
  image_name  = "Centos-7"
  key_pair    = "openstack-teste"
}
