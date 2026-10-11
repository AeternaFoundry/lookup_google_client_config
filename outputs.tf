output "client_config_lookup_id" {
  description = "Map of id values across all client_config_lookup, keyed the same as var.client_config_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_client_config.client_config_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "client_config_lookup_access_token" {
  description = "Map of access_token values across all client_config_lookup, keyed the same as var.client_config_lookup except keys with no access_token are omitted"
  value       = { for k, v in data.google_client_config.client_config_lookup : k => v.access_token if v.access_token != null && length(v.access_token) > 0 }
  sensitive   = true
}
output "client_config_lookup_default_labels" {
  description = "Map of default_labels values across all client_config_lookup, keyed the same as var.client_config_lookup except keys with no default_labels are omitted"
  value       = { for k, v in data.google_client_config.client_config_lookup : k => v.default_labels if v.default_labels != null && length(v.default_labels) > 0 }
}
output "client_config_lookup_project" {
  description = "Map of project values across all client_config_lookup, keyed the same as var.client_config_lookup except keys with no project are omitted"
  value       = { for k, v in data.google_client_config.client_config_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}
output "client_config_lookup_region" {
  description = "Map of region values across all client_config_lookup, keyed the same as var.client_config_lookup except keys with no region are omitted"
  value       = { for k, v in data.google_client_config.client_config_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "client_config_lookup_zone" {
  description = "Map of zone values across all client_config_lookup, keyed the same as var.client_config_lookup except keys with no zone are omitted"
  value       = { for k, v in data.google_client_config.client_config_lookup : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

