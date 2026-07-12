locals {
  route_servers = { for k1, v1 in var.route_servers : k1 => { branch_to_branch_traffic_enabled = v1.branch_to_branch_traffic_enabled, hub_routing_preference = v1.hub_routing_preference, location = v1.location, name = v1.name, public_ip_address_id = v1.public_ip_address_id, resource_group_name = v1.resource_group_name, sku = v1.sku, subnet_id = v1.subnet_id, tags = v1.tags } }

  route_server_bgp_connections = merge([
    for k1, v1 in var.route_servers : {
      for k2, v2 in coalesce(v1.route_server_bgp_connections, {}) :
      "${k1}/${k2}" => merge(v2, {
        route_server_id = module.route_servers.route_servers_id["${k1}"]
      })
    }
  ]...)
}

module "route_servers" {
  source        = "git::https://github.com/AeternaModules/azurerm_route_server.git?ref=v4.80.0"
  route_servers = local.route_servers
}

module "route_server_bgp_connections" {
  source                       = "git::https://github.com/AeternaModules/azurerm_route_server_bgp_connection.git?ref=v4.80.0"
  route_server_bgp_connections = local.route_server_bgp_connections
  depends_on                   = [module.route_servers]
}

