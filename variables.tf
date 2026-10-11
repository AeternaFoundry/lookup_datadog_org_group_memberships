variable "org_group_memberships_lookup" {
  description = <<EOT
Map of org_group_memberships_lookup, attributes below
Optional:
    - org_group_id
    - org_uuid
EOT

  type = map(object({
    org_group_id = optional(string)
    org_uuid     = optional(string)
  }))
}

