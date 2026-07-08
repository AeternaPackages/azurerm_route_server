# --- azurerm_route_server ---
output "route_servers" {
  description = "All route_server resources"
  value       = module.route_servers.route_servers
}
output "route_servers_branch_to_branch_traffic_enabled" {
  description = "List of branch_to_branch_traffic_enabled values across all route_servers"
  value       = [for k, v in module.route_servers.route_servers : v.branch_to_branch_traffic_enabled]
}
output "route_servers_hub_routing_preference" {
  description = "List of hub_routing_preference values across all route_servers"
  value       = [for k, v in module.route_servers.route_servers : v.hub_routing_preference]
}
output "route_servers_location" {
  description = "List of location values across all route_servers"
  value       = [for k, v in module.route_servers.route_servers : v.location]
}
output "route_servers_name" {
  description = "List of name values across all route_servers"
  value       = [for k, v in module.route_servers.route_servers : v.name]
}
output "route_servers_public_ip_address_id" {
  description = "List of public_ip_address_id values across all route_servers"
  value       = [for k, v in module.route_servers.route_servers : v.public_ip_address_id]
}
output "route_servers_resource_group_name" {
  description = "List of resource_group_name values across all route_servers"
  value       = [for k, v in module.route_servers.route_servers : v.resource_group_name]
}
output "route_servers_routing_state" {
  description = "List of routing_state values across all route_servers"
  value       = [for k, v in module.route_servers.route_servers : v.routing_state]
}
output "route_servers_sku" {
  description = "List of sku values across all route_servers"
  value       = [for k, v in module.route_servers.route_servers : v.sku]
}
output "route_servers_subnet_id" {
  description = "List of subnet_id values across all route_servers"
  value       = [for k, v in module.route_servers.route_servers : v.subnet_id]
}
output "route_servers_tags" {
  description = "List of tags values across all route_servers"
  value       = [for k, v in module.route_servers.route_servers : v.tags]
}
output "route_servers_virtual_router_asn" {
  description = "List of virtual_router_asn values across all route_servers"
  value       = [for k, v in module.route_servers.route_servers : v.virtual_router_asn]
}
output "route_servers_virtual_router_ips" {
  description = "List of virtual_router_ips values across all route_servers"
  value       = [for k, v in module.route_servers.route_servers : v.virtual_router_ips]
}


# --- azurerm_route_server_bgp_connection ---
output "route_server_bgp_connections" {
  description = "All route_server_bgp_connection resources"
  value       = module.route_server_bgp_connections.route_server_bgp_connections
}
output "route_server_bgp_connections_name" {
  description = "List of name values across all route_server_bgp_connections"
  value       = [for k, v in module.route_server_bgp_connections.route_server_bgp_connections : v.name]
}
output "route_server_bgp_connections_peer_asn" {
  description = "List of peer_asn values across all route_server_bgp_connections"
  value       = [for k, v in module.route_server_bgp_connections.route_server_bgp_connections : v.peer_asn]
}
output "route_server_bgp_connections_peer_ip" {
  description = "List of peer_ip values across all route_server_bgp_connections"
  value       = [for k, v in module.route_server_bgp_connections.route_server_bgp_connections : v.peer_ip]
}
output "route_server_bgp_connections_route_server_id" {
  description = "List of route_server_id values across all route_server_bgp_connections"
  value       = [for k, v in module.route_server_bgp_connections.route_server_bgp_connections : v.route_server_id]
}



