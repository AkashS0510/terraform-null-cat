provider "local" {}


output "cat_ghost" {
  value = "Ghost meawed successfully!"
}


output "cat_is_not_ghost" {
  value = "Ghost meawed successfully!"
}

output "artifact_content" {
  value = local_file.artifact.content
}
