variable "azurerm_traffic_manager_profile_name"{
type = string
description = "name of traffic manager"
}
variable "azurerm_traffic_manager_profile_dns_config_relative_name"{
type = string
description = "name of DNS"
}
variable "endpoint1"{
type = string
description = "name of Endpoint001"
}
variable "endpoint2"{
type = string
description = "name of Endpoint002"
}

variable "app1"{
type = string
description = "name of web app 1"
}
variable "app2"{
type = string
description = "name of web app 2"
}