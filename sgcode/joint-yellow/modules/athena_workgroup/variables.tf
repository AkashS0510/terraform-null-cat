variable "name" {
  description = "Name of the Athena workgroup"
  type        = string
}

variable "state" {
  description = "State of the workgroup (ENABLED or DISABLED)"
  type        = string
}

variable "enforce_workgroup_configuration" {
  description = "Whether workgroup settings override client-side settings"
  type        = bool
}

variable "publish_cloudwatch_metrics_enabled" {
  description = "Whether CloudWatch metrics are enabled"
  type        = bool
}

variable "requester_pays_enabled" {
  description = "Whether requester pays is enabled"
  type        = bool
}

variable "selected_engine_version" {
  description = "Selected Athena engine version"
  type        = string
}