locals {
  module_defaults = {
    node_pool = {

      node_count = 2

      min_count            = 1
      max_count            = 3
      auto_scaling_enabled = true

      vm_size  = "Standard_B4ms"
      max_pods = 50
      zones    = ["1", "2", "3"] # Deploy across availability zones

      temporary_name_for_rotation = "${var.name}temp"

      node_public_ip_enabled = false

      upgrade_settings = {
        drain_timeout_in_minutes      = 0
        max_surge                     = "10%"
        node_soak_duration_in_minutes = 0
      }
      tags = {}
    }
  }
}
