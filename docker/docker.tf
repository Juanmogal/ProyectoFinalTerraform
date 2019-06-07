# Configure the Docker provider
provider "docker" {
  host = "tcp://127.0.0.1:2376/"
}
# Create a container
resource "docker_container" "prueba" {
  image = "ubuntu:latest"
  name  = "ContenedorCreadoConTerraform"
}
