output "org_group_memberships_lookup_id" {
  description = "Map of id values across all org_group_memberships_lookup, keyed the same as var.org_group_memberships_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_org_group_memberships.org_group_memberships_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "org_group_memberships_lookup_memberships" {
  description = "Map of memberships values across all org_group_memberships_lookup, keyed the same as var.org_group_memberships_lookup except keys with no memberships are omitted"
  value       = { for k, v in data.datadog_org_group_memberships.org_group_memberships_lookup : k => v.memberships if v.memberships != null && length(v.memberships) > 0 }
}
output "org_group_memberships_lookup_org_group_id" {
  description = "Map of org_group_id values across all org_group_memberships_lookup, keyed the same as var.org_group_memberships_lookup except keys with no org_group_id are omitted"
  value       = { for k, v in data.datadog_org_group_memberships.org_group_memberships_lookup : k => v.org_group_id if v.org_group_id != null && length(v.org_group_id) > 0 }
}
output "org_group_memberships_lookup_org_uuid" {
  description = "Map of org_uuid values across all org_group_memberships_lookup, keyed the same as var.org_group_memberships_lookup except keys with no org_uuid are omitted"
  value       = { for k, v in data.datadog_org_group_memberships.org_group_memberships_lookup : k => v.org_uuid if v.org_uuid != null && length(v.org_uuid) > 0 }
}

