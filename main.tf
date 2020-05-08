provider "openstack" {
  user_name   = "spinnaker"
  tenant_name = "tenant0021"
  password    = "gogogo2020"
  auth_url    = "http://openstack.privatecloud:5000/v2.0"
}

terraform {
  backend "swift" {
    container = "tf-swift-vm-teste"
  }
}

resource "openstack_compute_instance_v2" "instances" {
  name        = "vm-teste"
  count       = "1"
  flavor_name = "small-1"
  image_name  = "Centos-7"
  key_pair    = "openstack-teste"
}
