terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = ">3.0.0"
        }
    }
}

provider "azurerm" {
    skip_provider_registration = true
    features {}
}

resource "azurerm_policy_definition" "myPolicy" {
    name = "enforce-tag-values-custom"
    policy_type = "Custom"
    mode = "Indexed"
    display_name = "Require tag exists, and its value is permitted"
    description = "Custom deployment test. Enforces a required tag, and checks that its value exists in the permitted list of possible values. Does not apply to resource groups."

    policy_rule = file("./azurepolicy.rules.json")
    parameters = file("./azurepolicy.parameters.json")   
}

