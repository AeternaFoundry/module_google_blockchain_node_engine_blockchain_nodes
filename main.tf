resource "google_blockchain_node_engine_blockchain_nodes" "blockchain_node_engine_blockchain_nodes" {
  for_each = var.blockchain_node_engine_blockchain_nodes

  blockchain_node_id = each.value.blockchain_node_id
  location           = each.value.location
  blockchain_type    = each.value.blockchain_type
  deletion_policy    = each.value.deletion_policy
  labels             = each.value.labels
  project            = each.value.project

  dynamic "ethereum_details" {
    for_each = each.value.ethereum_details != null ? [each.value.ethereum_details] : []
    content {
      api_enable_admin = ethereum_details.value.api_enable_admin
      api_enable_debug = ethereum_details.value.api_enable_debug
      consensus_client = ethereum_details.value.consensus_client
      execution_client = ethereum_details.value.execution_client
      dynamic "geth_details" {
        for_each = ethereum_details.value.geth_details != null ? [ethereum_details.value.geth_details] : []
        content {
          garbage_collection_mode = geth_details.value.garbage_collection_mode
        }
      }
      network   = ethereum_details.value.network
      node_type = ethereum_details.value.node_type
      dynamic "validator_config" {
        for_each = ethereum_details.value.validator_config != null ? [ethereum_details.value.validator_config] : []
        content {
          beacon_fee_recipient = validator_config.value.beacon_fee_recipient
          mev_relay_urls       = validator_config.value.mev_relay_urls
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

