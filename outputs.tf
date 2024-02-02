output "repo_urls" {
  value = [ for v in values(github_repository.repo) : v.html_url ]
}
