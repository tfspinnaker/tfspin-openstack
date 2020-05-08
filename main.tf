provider "openstack" {
  user_name   = "spinnaker"
  tenant_name = "tenant0021"
  tenant_id   = "83733e5dc93240d4884fce417a83a28a"
  password    = "gogogo2020"
  auth_url    = "http://openstack.privatecloud:5000/v2.0"
  region      = "RegionOne"
}

//terraform {
//  backend "swift" {
//    container   = "tf-swift-vm-teste"
//    auth_url    = "http://openstack.privatecloud:5000/v2.0"
//    region_name = "RegionOne"
//    user_name   = "spinnaker"
//    password    = "gogogo2020"
//  }
//}

resource "openstack_compute_instance_v2" "instances" {
  name        = "vm-teste"
  count       = "1"
  flavor_name = "small-1"
  image_name  = "Centos-7"
  key_pair    = "openstack-teste"
}
