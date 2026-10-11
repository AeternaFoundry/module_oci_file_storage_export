output "file_storage_exports_id" {
  description = "Map of id values across all file_storage_exports, keyed the same as var.file_storage_exports except keys with no id are omitted"
  value       = { for k, v in oci_file_storage_export.file_storage_exports : k => v.id if v.id != null && length(v.id) > 0 }
}
output "file_storage_exports_export_options" {
  description = "Map of export_options values across all file_storage_exports, keyed the same as var.file_storage_exports except keys with no export_options are omitted"
  value       = { for k, v in oci_file_storage_export.file_storage_exports : k => v.export_options if v.export_options != null && length(v.export_options) > 0 }
}
output "file_storage_exports_export_set_id" {
  description = "Map of export_set_id values across all file_storage_exports, keyed the same as var.file_storage_exports except keys with no export_set_id are omitted"
  value       = { for k, v in oci_file_storage_export.file_storage_exports : k => v.export_set_id if v.export_set_id != null && length(v.export_set_id) > 0 }
}
output "file_storage_exports_file_system_id" {
  description = "Map of file_system_id values across all file_storage_exports, keyed the same as var.file_storage_exports except keys with no file_system_id are omitted"
  value       = { for k, v in oci_file_storage_export.file_storage_exports : k => v.file_system_id if v.file_system_id != null && length(v.file_system_id) > 0 }
}
output "file_storage_exports_is_idmap_groups_for_sys_auth" {
  description = "Map of is_idmap_groups_for_sys_auth values across all file_storage_exports, keyed the same as var.file_storage_exports except keys with no is_idmap_groups_for_sys_auth are omitted"
  value       = { for k, v in oci_file_storage_export.file_storage_exports : k => v.is_idmap_groups_for_sys_auth if v.is_idmap_groups_for_sys_auth != null }
}
output "file_storage_exports_is_lock_override" {
  description = "Map of is_lock_override values across all file_storage_exports, keyed the same as var.file_storage_exports except keys with no is_lock_override are omitted"
  value       = { for k, v in oci_file_storage_export.file_storage_exports : k => v.is_lock_override if v.is_lock_override != null }
}
output "file_storage_exports_locks" {
  description = "Map of locks values across all file_storage_exports, keyed the same as var.file_storage_exports except keys with no locks are omitted"
  value       = { for k, v in oci_file_storage_export.file_storage_exports : k => v.locks if v.locks != null && length(v.locks) > 0 }
}
output "file_storage_exports_path" {
  description = "Map of path values across all file_storage_exports, keyed the same as var.file_storage_exports except keys with no path are omitted"
  value       = { for k, v in oci_file_storage_export.file_storage_exports : k => v.path if v.path != null && length(v.path) > 0 }
}
output "file_storage_exports_state" {
  description = "Map of state values across all file_storage_exports, keyed the same as var.file_storage_exports except keys with no state are omitted"
  value       = { for k, v in oci_file_storage_export.file_storage_exports : k => v.state if v.state != null && length(v.state) > 0 }
}
output "file_storage_exports_time_created" {
  description = "Map of time_created values across all file_storage_exports, keyed the same as var.file_storage_exports except keys with no time_created are omitted"
  value       = { for k, v in oci_file_storage_export.file_storage_exports : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}

