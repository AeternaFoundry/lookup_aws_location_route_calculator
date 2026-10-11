variable "location_route_calculator_lookup" {
  description = <<EOT
Map of location_route_calculator_lookup, attributes below
Required:
    - calculator_name
Optional:
    - region
    - tags
EOT

  type = map(object({
    calculator_name = string
    region          = optional(string)
    tags            = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.location_route_calculator_lookup : (
        length(v.calculator_name) >= 1 && length(v.calculator_name) <= 100
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
}

