variable "identity_domains_conditions" {
  description = <<EOT
Map of identity_domains_conditions, attributes below
Required:
    - attribute_name
    - attribute_value
    - idcs_endpoint
    - name
    - operator
    - schemas
Optional:
    - attribute_sets
    - attributes
    - authorization
    - description
    - evaluate_condition_if
    - external_id
    - ocid
    - resource_type_schema_version
    - tags (block):
        - key (required)
        - value (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    attribute_name               = string
    attribute_value              = string
    idcs_endpoint                = string
    name                         = string
    operator                     = string
    schemas                      = list(string)
    attribute_sets               = optional(list(string))
    attributes                   = optional(string)
    authorization                = optional(string)
    description                  = optional(string)
    evaluate_condition_if        = optional(string)
    external_id                  = optional(string)
    ocid                         = optional(string)
    resource_type_schema_version = optional(string)
    tags = optional(list(object({
      key   = string
      value = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

