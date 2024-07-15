resource "azurerm_network_security_group" "RSG" {
  name                = "resource-security-group"
  location            = "West Europe"
  resource_group_name = "rtdf"
}

resource "azurerm_virtual_network" "rn" {
  name                = "resource-network"
  location            = "West Europe"
  resource_group_name = "rtdf"
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
}