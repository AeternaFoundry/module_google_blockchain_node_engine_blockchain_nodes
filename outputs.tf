output "blockchain_node_engine_blockchain_nodes_id" {
  description = "Map of id values across all blockchain_node_engine_blockchain_nodes, keyed the same as var.blockchain_node_engine_blockchain_nodes except keys with no id are omitted"
  value       = { for k, v in google_blockchain_node_engine_blockchain_nodes.blockchain_node_engine_blockchain_nodes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "blockchain_node_engine_blockchain_nodes_blockchain_node_id" {
  description = "Map of blockchain_node_id values across all blockchain_node_engine_blockchain_nodes, keyed the same as var.blockchain_node_engine_blockchain_nodes except keys with no blockchain_node_id are omitted"
  value       = { for k, v in google_blockchain_node_engine_blockchain_nodes.blockchain_node_engine_blockchain_nodes : k => v.blockchain_node_id if v.blockchain_node_id != null && length(v.blockchain_node_id) > 0 }
}
output "blockchain_node_engine_blockchain_nodes_blockchain_type" {
  description = "Map of blockchain_type values across all blockchain_node_engine_blockchain_nodes, keyed the same as var.blockchain_node_engine_blockchain_nodes except keys with no blockchain_type are omitted"
  value       = { for k, v in google_blockchain_node_engine_blockchain_nodes.blockchain_node_engine_blockchain_nodes : k => v.blockchain_type if v.blockchain_type != null && length(v.blockchain_type) > 0 }
}
output "blockchain_node_engine_blockchain_nodes_connection_info" {
  description = "Map of connection_info values across all blockchain_node_engine_blockchain_nodes, keyed the same as var.blockchain_node_engine_blockchain_nodes except keys with no connection_info are omitted"
  value       = { for k, v in google_blockchain_node_engine_blockchain_nodes.blockchain_node_engine_blockchain_nodes : k => v.connection_info if v.connection_info != null && length(v.connection_info) > 0 }
}
output "blockchain_node_engine_blockchain_nodes_create_time" {
  description = "Map of create_time values across all blockchain_node_engine_blockchain_nodes, keyed the same as var.blockchain_node_engine_blockchain_nodes except keys with no create_time are omitted"
  value       = { for k, v in google_blockchain_node_engine_blockchain_nodes.blockchain_node_engine_blockchain_nodes : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "blockchain_node_engine_blockchain_nodes_deletion_policy" {
  description = "Map of deletion_policy values across all blockchain_node_engine_blockchain_nodes, keyed the same as var.blockchain_node_engine_blockchain_nodes except keys with no deletion_policy are omitted"
  value       = { for k, v in google_blockchain_node_engine_blockchain_nodes.blockchain_node_engine_blockchain_nodes : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "blockchain_node_engine_blockchain_nodes_effective_labels" {
  description = "Map of effective_labels values across all blockchain_node_engine_blockchain_nodes, keyed the same as var.blockchain_node_engine_blockchain_nodes except keys with no effective_labels are omitted"
  value       = { for k, v in google_blockchain_node_engine_blockchain_nodes.blockchain_node_engine_blockchain_nodes : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "blockchain_node_engine_blockchain_nodes_ethereum_details" {
  description = "Map of ethereum_details values across all blockchain_node_engine_blockchain_nodes, keyed the same as var.blockchain_node_engine_blockchain_nodes except keys with no ethereum_details are omitted"
  value       = { for k, v in google_blockchain_node_engine_blockchain_nodes.blockchain_node_engine_blockchain_nodes : k => one(v.ethereum_details) if v.ethereum_details != null && length(v.ethereum_details) > 0 }
}
output "blockchain_node_engine_blockchain_nodes_labels" {
  description = "Map of labels values across all blockchain_node_engine_blockchain_nodes, keyed the same as var.blockchain_node_engine_blockchain_nodes except keys with no labels are omitted"
  value       = { for k, v in google_blockchain_node_engine_blockchain_nodes.blockchain_node_engine_blockchain_nodes : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "blockchain_node_engine_blockchain_nodes_location" {
  description = "Map of location values across all blockchain_node_engine_blockchain_nodes, keyed the same as var.blockchain_node_engine_blockchain_nodes except keys with no location are omitted"
  value       = { for k, v in google_blockchain_node_engine_blockchain_nodes.blockchain_node_engine_blockchain_nodes : k => v.location if v.location != null && length(v.location) > 0 }
}
output "blockchain_node_engine_blockchain_nodes_name" {
  description = "Map of name values across all blockchain_node_engine_blockchain_nodes, keyed the same as var.blockchain_node_engine_blockchain_nodes except keys with no name are omitted"
  value       = { for k, v in google_blockchain_node_engine_blockchain_nodes.blockchain_node_engine_blockchain_nodes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "blockchain_node_engine_blockchain_nodes_project" {
  description = "Map of project values across all blockchain_node_engine_blockchain_nodes, keyed the same as var.blockchain_node_engine_blockchain_nodes except keys with no project are omitted"
  value       = { for k, v in google_blockchain_node_engine_blockchain_nodes.blockchain_node_engine_blockchain_nodes : k => v.project if v.project != null && length(v.project) > 0 }
}
output "blockchain_node_engine_blockchain_nodes_terraform_labels" {
  description = "Map of terraform_labels values across all blockchain_node_engine_blockchain_nodes, keyed the same as var.blockchain_node_engine_blockchain_nodes except keys with no terraform_labels are omitted"
  value       = { for k, v in google_blockchain_node_engine_blockchain_nodes.blockchain_node_engine_blockchain_nodes : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "blockchain_node_engine_blockchain_nodes_update_time" {
  description = "Map of update_time values across all blockchain_node_engine_blockchain_nodes, keyed the same as var.blockchain_node_engine_blockchain_nodes except keys with no update_time are omitted"
  value       = { for k, v in google_blockchain_node_engine_blockchain_nodes.blockchain_node_engine_blockchain_nodes : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

