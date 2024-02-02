resource "github_repository" "repo" {
  for_each    = var.iterations
  name        = "${each.value}-${var.repo_suffix}"
  description = "Sweet junk made by ${var.author} for the ${each.key} time."
  visibility  = "public"
}
