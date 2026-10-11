variable "sfn_aliases" {
  description = <<EOT
Map of sfn_aliases, attributes below
Required:
    - name
    - routing_configuration (block):
        - state_machine_version_arn (required)
        - weight (required)
Optional:
    - description
    - region
EOT

  type = map(object({
    name        = string
    description = optional(string)
    region      = optional(string)
    routing_configuration = list(object({
      state_machine_version_arn = string
      weight                    = number
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.sfn_aliases : (
        length(v.routing_configuration) >= 1
      )
    ])
    error_message = "Each routing_configuration list must contain at least 1 items"
  }
}

