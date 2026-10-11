variable "git_repositories_lookup" {
  description = <<EOT
Map of git_repositories_lookup, attributes below
Optional:
    - include_hidden
    - name
    - project_id
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    include_hidden = optional(bool)
    name           = optional(string)
    project_id     = optional(string)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.git_repositories_lookup : (
        v.project_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.git_repositories_lookup : (
        v.name == null || (length(trimspace(v.name)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

