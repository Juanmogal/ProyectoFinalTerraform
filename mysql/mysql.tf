# Provider que estamos utilizando, en este caso MySQL
provider "mysql" {
  endpoint = "127.0.0.1:3306"
  username = "root"
  password = "2asirtriana"
}
#Creamos la base de datos, en este caso la llamaremos "ejemplo"
resource "mysql_database" "app" {
  name = "ejemplo"
}
#Creamos un usuario con su contraseña correspondiente
resource "mysql_user" "juanmoreno" {
  user               = "juanmoreno"
  host               = "localhost"
  plaintext_password = "2asirtriana"
}
#Damos permisos al usuario
resource "mysql_grant" "juanmoreno" {
  user       = "${mysql_user.juanmoreno.user}"
  host       = "${mysql_user.juanmoreno.host}"
  database   = "ejemplo"
  privileges = ["SELECT", "UPDATE","INSERT","DELETE"]

}