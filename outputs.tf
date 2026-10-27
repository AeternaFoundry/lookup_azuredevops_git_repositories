output "git_repositories_lookup_id" {
  description = "Map of id values across all git_repositories_lookup, keyed the same as var.git_repositories_lookup"
  value       = { for k, v in data.azuredevops_git_repositories.git_repositories_lookup : k => v.id }
}
output "git_repositories_lookup_include_hidden" {
  description = "Map of include_hidden values across all git_repositories_lookup, keyed the same as var.git_repositories_lookup"
  value       = { for k, v in data.azuredevops_git_repositories.git_repositories_lookup : k => v.include_hidden }
}
output "git_repositories_lookup_name" {
  description = "Map of name values across all git_repositories_lookup, keyed the same as var.git_repositories_lookup"
  value       = { for k, v in data.azuredevops_git_repositories.git_repositories_lookup : k => v.name }
}
output "git_repositories_lookup_project_id" {
  description = "Map of project_id values across all git_repositories_lookup, keyed the same as var.git_repositories_lookup"
  value       = { for k, v in data.azuredevops_git_repositories.git_repositories_lookup : k => v.project_id }
}
output "git_repositories_lookup_repositories" {
  description = "Map of repositories values across all git_repositories_lookup, keyed the same as var.git_repositories_lookup"
  value       = { for k, v in data.azuredevops_git_repositories.git_repositories_lookup : k => v.repositories }
}

