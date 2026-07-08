variable "route_servers" {
  description = <<EOT
Map of route_servers, attributes below
Required:
    - location
    - name
    - public_ip_address_id
    - resource_group_name
    - sku
    - subnet_id
Optional:
    - branch_to_branch_traffic_enabled
    - hub_routing_preference
    - tags
Nested route_server_bgp_connections (azurerm_route_server_bgp_connection):
    Required:
        - name
        - peer_asn
        - peer_ip
EOT

  type = map(object({
    location                         = string
    name                             = string
    public_ip_address_id             = string
    resource_group_name              = string
    sku                              = string
    subnet_id                        = string
    branch_to_branch_traffic_enabled = optional(bool)   # Default: false
    hub_routing_preference           = optional(string) # Default: "ExpressRoute"
    tags                             = optional(map(string))
    route_server_bgp_connections = optional(map(object({
      name     = string
      peer_asn = number
      peer_ip  = string
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.route_servers) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.route_servers : [for kk in keys(coalesce(v0.route_server_bgp_connections, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
