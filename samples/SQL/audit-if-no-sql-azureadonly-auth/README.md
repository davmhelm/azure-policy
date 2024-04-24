# Audit If AAD-only Auth is not configured

Audit If AAD-only Auth is not configured on this server

| :warning: Public Preview           |
|:---------------------------|
| This policy sample relies on a feature of Azure SQL Database that is in public preview as of 8th June 2021. **No warranties or SLA are implied, use at your own risk.**      |

https://docs.microsoft.com/en-us/azure/azure-sql/database/authentication-azure-ad-only-authentication

## Try on Portal

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdavmhelm%2Fazure-policy%2Fmaster%2Fsamples%2FSQL%2Faudit-if-no-sql-azureadonly-auth%2Fazurepolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "audit-sql-azureadonly-auth" -DisplayName "Audit If no AAD-only Auth" -description "Audit If AAD-only Auth is not configured on this server" -Policy 'https://raw.githubusercontent.com/davmhelm/azure-policy/master/samples/SQL/audit-if-no-sql-azureadonly-auth/azurepolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/davmhelm/azure-policy/master/samples/SQL/audit-if-no-sql-azureadonly-auth/azurepolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope>  -PolicyDefinition $definition
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'audit-sql-azureadonly-auth' --display-name 'Audit If no AAD-only Auth' --description 'Audit If AAD-only Auth is not configured on this server' --rules 'https://raw.githubusercontent.com/davmhelm/azure-policy/master/samples/SQL/audit-if-no-sql-azureadonly-auth/azurepolicy.rules.json' --params 'https://raw.githubusercontent.com/davmhelm/azure-policy/master/samples/SQL/audit-if-no-sql-azureadonly-auth/azurepolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "audit-sql-azureadonly-auth" 

````
