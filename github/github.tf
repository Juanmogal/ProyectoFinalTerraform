# Configure the GitHub Provider
provider "github" {
  organization = "proyectoiestriana"
}
resource "github_repository" "ejemplo2" {
  name        = "ejemplo10"
  description = "Ejemplo terraform"
  private = false
}