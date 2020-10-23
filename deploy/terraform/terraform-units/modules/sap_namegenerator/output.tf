output naming {
  value = {
    prefix = {
      DEPLOYER = local.deployer_name
      SDU      = local.sdu_name
      VNET     = local.vnet_name
      LIBRARY  = local.library_name
    }
    prefix_resource = {
      DEPLOYER = local.deployer_name_resource
      SDU      = local.sdu_name_resource
      VNET     = local.vnet_name_resource
      LIBRARY  = local.library_name_resource
    }
    storageaccount_names = {
      DEPLOYER = local.deployer_storageaccount_name
      SDU      = local.sdu_storageaccount_name
      VNET     = local.vnet_storageaccount_name
      LIBRARY = {
        library_storageaccount_name        = local.library_storageaccount_name
        terraformstate_storageaccount_name = local.terraformstate_storageaccount_name
      }
    }
    keyvault_names = {
      DEPLOYER = {
        private_access = local.deployer_private_keyvault_name
        user_access    = local.deployer_user_keyvault_name
      }
      LIBRARY = {
        private_access = local.library_private_keyvault_name
        user_access    = local.library_user_keyvault_name
      }
      SDU = {
        private_access = local.sdu_private_keyvault_name
        user_access    = local.sdu_user_keyvault_name
      }
      VNET = {
        private_access = local.vnet_private_keyvault_name
        user_access    = local.vnet_user_keyvault_name
      }
    }
    virtualmachine_names = {
      ANCHOR_COMPUTERNAME = local.anchor_server_names
      ANYDB_COMPUTERNAME  = concat(local.anydb_computer_names, local.anydb_computer_names_ha)
      ANYDB_VMNAME        = concat(local.anydb_vm_names, local.anydb_vm_names_ha)
      APP_COMPUTERNAME    = local.app_computer_names
      APP_VMNAME          = local.app_server_vm_names
      DEPLOYER            = local.deployer_vm_names
      HANA_COMPUTERNAME   = concat(local.hana_computer_names, local.hana_computer_names_ha)
      HANA_VMNAME         = concat(local.hana_server_vm_names, local.hana_server_vm_names_ha)
      ISCSI_COMPUTERNAME  = local.iscsi_server_names
      SCS_COMPUTERNAME    = local.scs_computer_names
      SCS_VMNAME          = local.scs_server_vm_names
      WEB_COMPUTERNAME    = local.web_computer_names
      WEB_VMNAME          = local.web_server_vm_names
    }
    resource_suffixes = var.resource_suffixes
  }
}
