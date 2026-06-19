resource "azurerm_resource_group" "aks_rg" {
  name     = "poc-15"
  location = "West US"
}
 
resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = "my-aks-cluster"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  dns_prefix          = "myakscluster"
 
  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2ps_v2"
 
    upgrade_settings {
      max_surge = "0"
    }
  }
 
  identity {
    type = "SystemAssigned"
  }
}
