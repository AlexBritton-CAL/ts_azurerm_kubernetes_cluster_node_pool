locals {
  module_defaults = {
    node_pool = {
      vm_size                     = "Standard_B4ms"
      node_count                  = 2
      min_count                   = 1
      max_count                   = 3
      auto_scaling_enabled        = true
      max_pods                    = 50
      temporary_name_for_rotation = "${var.name}temp"
      zones                       = ["1", "2", "3"] # Deploy across availability zones
      tags                       = {}
    }
  }
}
