resource "oci_file_storage_export" "file_storage_exports" {
  for_each = var.file_storage_exports

  export_set_id                = each.value.export_set_id
  file_system_id               = each.value.file_system_id
  path                         = each.value.path
  is_idmap_groups_for_sys_auth = each.value.is_idmap_groups_for_sys_auth
  is_lock_override             = each.value.is_lock_override

  dynamic "export_options" {
    for_each = each.value.export_options != null ? each.value.export_options : []
    content {
      access                         = export_options.value.access
      allowed_auth                   = export_options.value.allowed_auth
      anonymous_gid                  = export_options.value.anonymous_gid
      anonymous_uid                  = export_options.value.anonymous_uid
      identity_squash                = export_options.value.identity_squash
      is_anonymous_access_allowed    = export_options.value.is_anonymous_access_allowed
      require_privileged_source_port = export_options.value.require_privileged_source_port
      source                         = export_options.value.source
    }
  }

  dynamic "locks" {
    for_each = each.value.locks != null ? each.value.locks : []
    content {
      message             = locks.value.message
      related_resource_id = locks.value.related_resource_id
      time_created        = locks.value.time_created
      type                = locks.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

