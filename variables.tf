variable "internetmonitor_monitors" {
  description = <<EOT
Map of internetmonitor_monitors, attributes below
Required:
    - monitor_name
Optional:
    - max_city_networks_to_monitor
    - region
    - resources
    - status
    - tags
    - tags_all
    - traffic_percentage_to_monitor
    - health_events_config (block):
        - availability_score_threshold (optional)
        - performance_score_threshold (optional)
    - internet_measurements_log_delivery (block):
        - s3_config (optional, block):
            - bucket_name (required)
            - bucket_prefix (optional)
            - log_delivery_status (optional)
EOT

  type = map(object({
    monitor_name                  = string
    max_city_networks_to_monitor  = optional(number)
    region                        = optional(string)
    resources                     = optional(set(string))
    status                        = optional(string)
    tags                          = optional(map(string))
    tags_all                      = optional(map(string))
    traffic_percentage_to_monitor = optional(number)
    health_events_config = optional(object({
      availability_score_threshold = optional(number)
      performance_score_threshold  = optional(number)
    }))
    internet_measurements_log_delivery = optional(object({
      s3_config = optional(object({
        bucket_name         = string
        bucket_prefix       = optional(string)
        log_delivery_status = optional(string)
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.internetmonitor_monitors : (
        v.max_city_networks_to_monitor == null || (v.max_city_networks_to_monitor >= 1 && v.max_city_networks_to_monitor <= 500000)
      )
    ])
    error_message = "must be between 1 and 500000"
  }
  validation {
    condition = alltrue([
      for k, v in var.internetmonitor_monitors : (
        length(v.monitor_name) >= 1 && length(v.monitor_name) <= 255
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.internetmonitor_monitors : (
        v.traffic_percentage_to_monitor == null || (v.traffic_percentage_to_monitor >= 1 && v.traffic_percentage_to_monitor <= 100)
      )
    ])
    error_message = "must be between 1 and 100"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

