data "aws_location_route_calculator" "location_route_calculator_lookup" {
  for_each = var.location_route_calculator_lookup

  calculator_name = each.value.calculator_name
  region          = each.value.region
  tags            = each.value.tags
}

