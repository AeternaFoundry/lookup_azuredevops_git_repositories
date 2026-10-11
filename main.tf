data "azuredevops_git_repositories" "git_repositories_lookup" {
  for_each = var.git_repositories_lookup

  include_hidden = each.value.include_hidden
  name           = each.value.name
  project_id     = each.value.project_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

