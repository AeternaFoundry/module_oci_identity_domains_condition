resource "oci_identity_domains_condition" "identity_domains_conditions" {
  for_each = var.identity_domains_conditions

  attribute_name               = each.value.attribute_name
  attribute_value              = each.value.attribute_value
  idcs_endpoint                = each.value.idcs_endpoint
  name                         = each.value.name
  operator                     = each.value.operator
  schemas                      = each.value.schemas
  attribute_sets               = each.value.attribute_sets
  attributes                   = each.value.attributes
  authorization                = each.value.authorization
  description                  = each.value.description
  evaluate_condition_if        = each.value.evaluate_condition_if
  external_id                  = each.value.external_id
  ocid                         = each.value.ocid
  resource_type_schema_version = each.value.resource_type_schema_version

  dynamic "tags" {
    for_each = each.value.tags != null ? each.value.tags : []
    content {
      key   = tags.value.key
      value = tags.value.value
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

