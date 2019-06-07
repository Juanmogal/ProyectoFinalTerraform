# Configure the GitHub Provider
provider "github" {
  organization = "proyectoiestriana"
}
resource "github_repository" "RepositorioModulado" {
  name        = "RepositorioModulado"
  description = "Creando repositorios con modulos de Terraform"
  private = false
}
