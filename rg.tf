resource "azurerm_resource_group" "malli" {
  name     = "rg-malli"
  location = "eastus"  
  tags = { department = "IT" } 
}