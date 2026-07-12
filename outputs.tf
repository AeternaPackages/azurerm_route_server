# --- azurerm_route_server ---
output "route_servers_id" {
  description = "Map of id values across all route_servers, keyed the same as var.route_servers"
  value       = module.route_servers.route_servers_id
}

output "route_servers_branch_to_branch_traffic_enabled" {
  description = "Map of branch_to_branch_traffic_enabled values across all route_servers, keyed the same as var.route_servers"
  value       = module.route_servers.route_servers_branch_to_branch_traffic_enabled
}

output "route_servers_hub_routing_preference" {
  description = "Map of hub_routing_preference values across all route_servers, keyed the same as var.route_servers"
  value       = module.route_servers.route_servers_hub_routing_preference
}

output "route_servers_location" {
  description = "Map of location values across all route_servers, keyed the same as var.route_servers"
  value       = module.route_servers.route_servers_location
}

output "route_servers_name" {
  description = "Map of name values across all route_servers, keyed the same as var.route_servers"
  value       = module.route_servers.route_servers_name
}

output "route_servers_public_ip_address_id" {
  description = "Map of public_ip_address_id values across all route_servers, keyed the same as var.route_servers"
  value       = module.route_servers.route_servers_public_ip_address_id
}

output "route_servers_resource_group_name" {
  description = "Map of resource_group_name values across all route_servers, keyed the same as var.route_servers"
  value       = module.route_servers.route_servers_resource_group_name
}

output "route_servers_routing_state" {
  description = "Map of routing_state values across all route_servers, keyed the same as var.route_servers"
  value       = module.route_servers.route_servers_routing_state
}

output "route_servers_sku" {
  description = "Map of sku values across all route_servers, keyed the same as var.route_servers"
  value       = module.route_servers.route_servers_sku
}

output "route_servers_subnet_id" {
  description = "Map of subnet_id values across all route_servers, keyed the same as var.route_servers"
  value       = module.route_servers.route_servers_subnet_id
}

output "route_servers_tags" {
  description = "Map of tags values across all route_servers, keyed the same as var.route_servers"
  value       = module.route_servers.route_servers_tags
}

output "route_servers_virtual_router_asn" {
  description = "Map of virtual_router_asn values across all route_servers, keyed the same as var.route_servers"
  value       = module.route_servers.route_servers_virtual_router_asn
}

output "route_servers_virtual_router_ips" {
  description = "Map of virtual_router_ips values across all route_servers, keyed the same as var.route_servers"
  value       = module.route_servers.route_servers_virtual_router_ips
}

# --- azurerm_route_server_bgp_connection ---
output "route_server_bgp_connections_id" {
  description = "Map of id values across all route_server_bgp_connections, keyed the same as var.route_server_bgp_connections"
  value       = module.route_server_bgp_connections.route_server_bgp_connections_id
}

output "route_server_bgp_connections_name" {
  description = "Map of name values across all route_server_bgp_connections, keyed the same as var.route_server_bgp_connections"
  value       = module.route_server_bgp_connections.route_server_bgp_connections_name
}

output "route_server_bgp_connections_peer_asn" {
  description = "Map of peer_asn values across all route_server_bgp_connections, keyed the same as var.route_server_bgp_connections"
  value       = module.route_server_bgp_connections.route_server_bgp_connections_peer_asn
}

output "route_server_bgp_connections_peer_ip" {
  description = "Map of peer_ip values across all route_server_bgp_connections, keyed the same as var.route_server_bgp_connections"
  value       = module.route_server_bgp_connections.route_server_bgp_connections_peer_ip
}

output "route_server_bgp_connections_route_server_id" {
  description = "Map of route_server_id values across all route_server_bgp_connections, keyed the same as var.route_server_bgp_connections"
  value       = module.route_server_bgp_connections.route_server_bgp_connections_route_server_id
}


