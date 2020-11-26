output "vnet_sap_arm_id" {
  value = try(module.sap_landscape.vnet_sap[0].id, "")
}

output "landscape_key_vault_user_arm_id" {
  value = try(module.sap_landscape.kv_user[0].id, "")
}

output "landscape_key_vault_private_arm_id" {
  value = try(module.sap_landscape.kv_prvt[0].id, "")
}

output "sid_public_key_secret_name" {
  value = try(module.sap_landscape.sid_public_key_secret_name, "")
}

output "iscsi_private_ip" {
  value = try(module.sap_landscape.nics_iscsi[*].private_ip_address, [])
}

output "iscsi_authentication_type" {
  value = try(module.sap_landscape.iscsi_authentication_type, "")
}

output "iscsi_authentication_username" {
  value = try(module.sap_landscape.iscsi_authentication_username, "")
}

// Output for DNS
output "dns_info_iscsi" {
  value =  module.sap_landscape.dns_info_vms
}


