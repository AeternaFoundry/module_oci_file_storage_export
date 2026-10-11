variable "file_storage_exports" {
  description = <<EOT
Map of file_storage_exports, attributes below
Required:
    - export_set_id
    - file_system_id
    - path
Optional:
    - is_idmap_groups_for_sys_auth
    - is_lock_override
    - export_options (block):
        - access (optional)
        - allowed_auth (optional)
        - anonymous_gid (optional)
        - anonymous_uid (optional)
        - identity_squash (optional)
        - is_anonymous_access_allowed (optional)
        - require_privileged_source_port (optional)
        - source (required)
    - locks (block):
        - message (optional)
        - related_resource_id (optional)
        - time_created (optional)
        - type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    export_set_id                = string
    file_system_id               = string
    path                         = string
    is_idmap_groups_for_sys_auth = optional(bool)
    is_lock_override             = optional(bool)
    export_options = optional(list(object({
      access                         = optional(string)
      allowed_auth                   = optional(list(string))
      anonymous_gid                  = optional(string)
      anonymous_uid                  = optional(string)
      identity_squash                = optional(string)
      is_anonymous_access_allowed    = optional(bool)
      require_privileged_source_port = optional(bool)
      source                         = string
    })))
    locks = optional(list(object({
      message             = optional(string)
      related_resource_id = optional(string)
      time_created        = optional(string)
      type                = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

