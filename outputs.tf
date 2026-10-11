output "git_repositories_lookup_id" {
  description = "Map of id values across all git_repositories_lookup, keyed the same as var.git_repositories_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_git_repositories.git_repositories_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "git_repositories_lookup_include_hidden" {
  description = "Map of include_hidden values across all git_repositories_lookup, keyed the same as var.git_repositories_lookup except keys with no include_hidden are omitted"
  value       = { for k, v in data.azuredevops_git_repositories.git_repositories_lookup : k => v.include_hidden if v.include_hidden != null }
}
output "git_repositories_lookup_name" {
  description = "Map of name values across all git_repositories_lookup, keyed the same as var.git_repositories_lookup except keys with no name are omitted"
  value       = { for k, v in data.azuredevops_git_repositories.git_repositories_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "git_repositories_lookup_project_id" {
  description = "Map of project_id values across all git_repositories_lookup, keyed the same as var.git_repositories_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.azuredevops_git_repositories.git_repositories_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "git_repositories_lookup_repositories" {
  description = "Map of repositories values across all git_repositories_lookup, keyed the same as var.git_repositories_lookup except keys with no repositories are omitted"
  value       = { for k, v in data.azuredevops_git_repositories.git_repositories_lookup : k => v.repositories if v.repositories != null && length(v.repositories) > 0 }
}

