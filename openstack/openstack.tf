# Configure the OpenStack Provider
provider "openstack" {
  user_name   = "usuarioopenstack"
  tenant_name = "grupoopenstack"
  password    = "passwordusuario"
  auth_url    = "http://controller:5000/v3.0"
  region      = "RegionOne"
}

resource "openstack_compute_instance_v2" "instanciajuan" {
  name            = "instanciajuan"
  image_id        = "cd44ed06-22d4-4b1f-8f46-2031d183dbef"
  flavor_id       = "dca5a963-dc4c-448b-a256-b7288e1bc2a4"
  security_groups = ["default"]

  network {
    name = "provider"
  }
}
