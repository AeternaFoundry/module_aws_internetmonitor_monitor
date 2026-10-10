output "internetmonitor_monitors_id" {
  description = "Map of id values across all internetmonitor_monitors, keyed the same as var.internetmonitor_monitors"
  value       = { for k, v in aws_internetmonitor_monitor.internetmonitor_monitors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "internetmonitor_monitors_arn" {
  description = "Map of arn values across all internetmonitor_monitors, keyed the same as var.internetmonitor_monitors"
  value       = { for k, v in aws_internetmonitor_monitor.internetmonitor_monitors : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "internetmonitor_monitors_health_events_config" {
  description = "Map of health_events_config values across all internetmonitor_monitors, keyed the same as var.internetmonitor_monitors"
  value       = { for k, v in aws_internetmonitor_monitor.internetmonitor_monitors : k => one(v.health_events_config) if v.health_events_config != null && length(v.health_events_config) > 0 }
}
output "internetmonitor_monitors_internet_measurements_log_delivery" {
  description = "Map of internet_measurements_log_delivery values across all internetmonitor_monitors, keyed the same as var.internetmonitor_monitors"
  value       = { for k, v in aws_internetmonitor_monitor.internetmonitor_monitors : k => one(v.internet_measurements_log_delivery) if v.internet_measurements_log_delivery != null && length(v.internet_measurements_log_delivery) > 0 }
}
output "internetmonitor_monitors_max_city_networks_to_monitor" {
  description = "Map of max_city_networks_to_monitor values across all internetmonitor_monitors, keyed the same as var.internetmonitor_monitors"
  value       = { for k, v in aws_internetmonitor_monitor.internetmonitor_monitors : k => v.max_city_networks_to_monitor if v.max_city_networks_to_monitor != null }
}
output "internetmonitor_monitors_monitor_name" {
  description = "Map of monitor_name values across all internetmonitor_monitors, keyed the same as var.internetmonitor_monitors"
  value       = { for k, v in aws_internetmonitor_monitor.internetmonitor_monitors : k => v.monitor_name if v.monitor_name != null && length(v.monitor_name) > 0 }
}
output "internetmonitor_monitors_region" {
  description = "Map of region values across all internetmonitor_monitors, keyed the same as var.internetmonitor_monitors"
  value       = { for k, v in aws_internetmonitor_monitor.internetmonitor_monitors : k => v.region if v.region != null && length(v.region) > 0 }
}
output "internetmonitor_monitors_resources" {
  description = "Map of resources values across all internetmonitor_monitors, keyed the same as var.internetmonitor_monitors"
  value       = { for k, v in aws_internetmonitor_monitor.internetmonitor_monitors : k => v.resources if v.resources != null && length(v.resources) > 0 }
}
output "internetmonitor_monitors_status" {
  description = "Map of status values across all internetmonitor_monitors, keyed the same as var.internetmonitor_monitors"
  value       = { for k, v in aws_internetmonitor_monitor.internetmonitor_monitors : k => v.status if v.status != null && length(v.status) > 0 }
}
output "internetmonitor_monitors_tags" {
  description = "Map of tags values across all internetmonitor_monitors, keyed the same as var.internetmonitor_monitors"
  value       = { for k, v in aws_internetmonitor_monitor.internetmonitor_monitors : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "internetmonitor_monitors_tags_all" {
  description = "Map of tags_all values across all internetmonitor_monitors, keyed the same as var.internetmonitor_monitors"
  value       = { for k, v in aws_internetmonitor_monitor.internetmonitor_monitors : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "internetmonitor_monitors_traffic_percentage_to_monitor" {
  description = "Map of traffic_percentage_to_monitor values across all internetmonitor_monitors, keyed the same as var.internetmonitor_monitors"
  value       = { for k, v in aws_internetmonitor_monitor.internetmonitor_monitors : k => v.traffic_percentage_to_monitor if v.traffic_percentage_to_monitor != null }
}

