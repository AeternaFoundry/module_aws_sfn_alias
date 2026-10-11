output "sfn_aliases_id" {
  description = "Map of id values across all sfn_aliases, keyed the same as var.sfn_aliases"
  value       = { for k, v in aws_sfn_alias.sfn_aliases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sfn_aliases_arn" {
  description = "Map of arn values across all sfn_aliases, keyed the same as var.sfn_aliases"
  value       = { for k, v in aws_sfn_alias.sfn_aliases : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "sfn_aliases_creation_date" {
  description = "Map of creation_date values across all sfn_aliases, keyed the same as var.sfn_aliases"
  value       = { for k, v in aws_sfn_alias.sfn_aliases : k => v.creation_date if v.creation_date != null && length(v.creation_date) > 0 }
}
output "sfn_aliases_description" {
  description = "Map of description values across all sfn_aliases, keyed the same as var.sfn_aliases"
  value       = { for k, v in aws_sfn_alias.sfn_aliases : k => v.description if v.description != null && length(v.description) > 0 }
}
output "sfn_aliases_name" {
  description = "Map of name values across all sfn_aliases, keyed the same as var.sfn_aliases"
  value       = { for k, v in aws_sfn_alias.sfn_aliases : k => v.name if v.name != null && length(v.name) > 0 }
}
output "sfn_aliases_region" {
  description = "Map of region values across all sfn_aliases, keyed the same as var.sfn_aliases"
  value       = { for k, v in aws_sfn_alias.sfn_aliases : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sfn_aliases_routing_configuration" {
  description = "Map of routing_configuration values across all sfn_aliases, keyed the same as var.sfn_aliases"
  value       = { for k, v in aws_sfn_alias.sfn_aliases : k => v.routing_configuration if v.routing_configuration != null && length(v.routing_configuration) > 0 }
}

