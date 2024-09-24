rg-details = { Mradul = "southindia",
  Naresh = "Centralindia",
Sanidhya = "west europe" }

stg-details = {
  sa1 = {
    name                     = "sanidhya4647392vats"
    resource_group_name      = "Sanidhya"
    location                 = "south india"
    account_replication_type = "LRS"
  }
  sa2 = {
    name                     = "sanidhya7392kjfsakjfvats"
    resource_group_name      = "Mradul"
    location                 = "west europe"
    account_replication_type = "LRS"
  }
  sa3 = {
    name                     = "sanidhya7392kjisakjfvats"
    resource_group_name      = "Naresh"
    location                 = "east us"
    account_replication_type = "LRS"
  }
}

vnet-details = {
  vnet1 = {
    name                = "Sanidhya-network"
    location            = "west europe"
    resource_group_name = "Sanidhya"
    address_space       = ["10.0.0.0/16"]
  }


}

subnet-details = {
  subnet1 = {
    name                 = "Sanidhya-subnet"
    resource_group_name  = "Sanidhya"
    virtual_network_name = "Sanidhya-network"
    address_prefixes     = ["10.0.0.0/24"]
    location             = "west europe"
    security_name        = "rule1"
    nsg_name             = "nsg1"
  }

  # subnet3 = {
  #   name                 = "Sanidhya-subnet2"
  #   resource_group_name  = "Sanidhya"
  #   virtual_network_name = "Sanidhya-network"
  #   address_prefixes     = ["10.0.2.0/24"]
  #  location="west europe"
  #  security_name="rule3"
  #  nsg_name="nsg3"
  # }
  # subnet4 = {
  #   name                 = "Sanidhya-subnet3"
  #   resource_group_name  = "Sanidhya"
  #   virtual_network_name = "Sanidhya-network"
  #   address_prefixes     = ["10.0.3.0/24"]
  #  location="west europe"
  #  security_name="rule4"
  #  nsg_name="nsg4"
  # }
}


vm-details = {
  vm1 = {
    resource_group_name = "Sanidhya"
    location            = "west europe"
    size                = "Standard_F2"
    admin_password      = "Sanidhya@123"
    admin_username      = "Sanidhya"
    sub_name            = "Sanidhya-subnet"
    virtual_net_name    = "Sanidhya-network"

  }
  vm2 = {
    resource_group_name = "Sanidhya"
    location            = "west europe"
    size                = "Standard_F2"
    admin_password      = "Sanidhya@123"
    admin_username      = "Sanidhya"
    sub_name            = "Sanidhya-subnet"
    virtual_net_name    = "Sanidhya-network"
  }
}

bastion-details = {
  bas1 = {
    pip_name             = "Bation-pip"
    location             = "West Europe"
    resource_group_name  = "Sanidhya"
    bas_name             = "Sanidhya-bastion"
    ip_bas_name          = "Sanidhya-configuration"
    virtual_network_name = "Sanidhya-network"
    address_prefixes     = ["10.0.1.0/26"]
  }
}
