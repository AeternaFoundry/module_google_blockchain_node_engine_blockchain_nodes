variable "blockchain_node_engine_blockchain_nodes" {
  description = <<EOT
Map of blockchain_node_engine_blockchain_nodes, attributes below
Required:
    - blockchain_node_id
    - location
Optional:
    - blockchain_type
    - deletion_policy
    - labels
    - project
    - ethereum_details (block):
        - api_enable_admin (optional)
        - api_enable_debug (optional)
        - consensus_client (optional)
        - execution_client (optional)
        - geth_details (optional, block):
            - garbage_collection_mode (optional)
        - network (optional)
        - node_type (optional)
        - validator_config (optional, block):
            - beacon_fee_recipient (optional)
            - mev_relay_urls (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    blockchain_node_id = string
    location           = string
    blockchain_type    = optional(string)
    deletion_policy    = optional(string)
    labels             = optional(map(string))
    project            = optional(string)
    ethereum_details = optional(object({
      api_enable_admin = optional(bool)
      api_enable_debug = optional(bool)
      consensus_client = optional(string)
      execution_client = optional(string)
      geth_details = optional(object({
        garbage_collection_mode = optional(string)
      }))
      network   = optional(string)
      node_type = optional(string)
      validator_config = optional(object({
        beacon_fee_recipient = optional(string)
        mev_relay_urls       = optional(list(string))
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

