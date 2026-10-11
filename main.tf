data "datadog_org_group_memberships" "org_group_memberships_lookup" {
  for_each = var.org_group_memberships_lookup

  org_group_id = each.value.org_group_id
  org_uuid     = each.value.org_uuid
}

