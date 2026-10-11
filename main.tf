resource "aws_sfn_alias" "sfn_aliases" {
  for_each = var.sfn_aliases

  name        = each.value.name
  description = each.value.description
  region      = each.value.region

  dynamic "routing_configuration" {
    for_each = each.value.routing_configuration
    content {
      state_machine_version_arn = routing_configuration.value.state_machine_version_arn
      weight                    = routing_configuration.value.weight
    }
  }
}

