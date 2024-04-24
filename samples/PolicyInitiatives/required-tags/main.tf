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

variable "policy_def_id" {
  type = string
  description = "The ID of the policy definition used by this policy set, in the context of your deployment"
}

variable "required_tags" {
  type = set(object({
    tagName = string
    tagValues = set(string)
    }))
  description = "The set of required tags to be defined in this policy set, by name and including permitted values for each tag"
}

resource "azurerm_policy_set_definition" "myPolicySet" {
  name = "required-tags-policyset-custom"
  policy_type = "Custom"
  display_name = "Required Tags and preapproved values"

  parameters = file("./azurepolicyset.parameters.json")

  dynamic "policy_definition_reference" {
    for_each = var.required_tags
    content {
      policy_definition_id = var.policy_def_id
      reference_id = "tagName_${policy_definition_reference.value.tagName}"
      parameter_values = jsonencode(
        {
          tagName={value=policy_definition_reference.value.tagName}
          tagAllowedValues={value=policy_definition_reference.value.tagValues}
          policyEffect={value="[parameters('policySetEffect')]"}
        }
      )
    }
  }
}

output "policy_set_id" {
  value = azurerm_policy_set_definition.myPolicySet.id
}
