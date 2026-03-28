resource "azurerm_virtual_network" "bandi" {
    name = "vnet-bandi"
    resource_group_name = azurerm_resource_group.malli.name
    location            = azurerm_resource_group.malli.location 
    address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "sub" {
  name = "subnet1"
    resource_group_name  = azurerm_resource_group.malli.name
    virtual_network_name = azurerm_virtual_network.bandi.name
    address_prefixes     = ["10.0.1.0/24"]
}