# Enforce tag and its value

Require tag exists, and its value is permitted within a list of allowed values.

## Try on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdavmhelm%2Fazure-policy%2Fmaster%2Fsamples%2Fbuilt-in-policy%2Fenforce-tag-and-values%2Fazurepolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "enforce-tag-value" -DisplayName "Enforce tag and its value" -description "Enforces a required tag and its value." -Policy 'https://raw.githubusercontent.com/davmhelm/azure-policy/master/samples/built-in-policy/enforce-tag-and-values/azurepolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/davmhelm/azure-policy/master/samples/built-in-policy/enforce-tag-and-values/azurepolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope>  -tagName <tagName> -tagValue <tagValue> -PolicyDefinition $definition
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'enforce-tag-value' --display-name 'Enforce tag and its value' --description 'Enforces a required tag and its value.' --rules 'https://raw.githubusercontent.com/davmhelm/azure-policy/master/samples/built-in-policy/enforce-tag-and-values/azurepolicy.rules.json' --params 'https://raw.githubusercontent.comdavmhelm/azure-policy/master/samples/built-in-policy/enforce-tag-and-values/azurepolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "enforce-tag-and-values" 

````
