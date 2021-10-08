# Not allowed resource types

This policy enables you to specify the resource types that your organization cannot deploy.

## Try on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdavmhelm%2Fazure-policy%2Fmaster%2Fsamples%2Fbuilt-in-policy%2Fnot-allowed-resourceproviders%2Fazurepolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "not-allowed-resourceproviders" -DisplayName "Not allowed resource providers" -description "This policy enables you to specify the resource providers that your organization cannot deploy." -Policy 'https://raw.githubusercontent.com/davmhelm/azure-policy/master/samples/built-in-policy/not-allowed-resourceproviders/azurepolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/davmhelm/azure-policy/master/samples/built-in-policy/not-allowed-resourceproviders/azurepolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope>  -listOfResourceProvidersNotAllowed <Not allowed resource providers> -PolicyDefinition $definition
$assignment 
````



## Try with CLI

````cli

az policy definition create --name 'not-allowed-resourceproviders' --display-name 'Not allowed resource providers' --description 'This policy enables you to specify the resource providers that your organization cannot deploy.' --rules 'https://raw.githubusercontent.com/davmhelm/azure-policy/master/samples/built-in-policy/not-allowed-resourceproviders/azurepolicy.rules.json' --params 'https://raw.githubusercontent.com/davmhelm/azure-policy/master/samples/built-in-policy/not-allowed-resourceproviders/azurepolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "not-allowed-resourceproviders" 

````
