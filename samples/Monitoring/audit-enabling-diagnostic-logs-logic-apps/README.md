## Audit enabling of diagnostic logs in Logic Apps

Audit enabling of logs and retain them up to a year. This enables you to recreate activity trails for investigation purposes when a security incident occurs or your network is compromised.

## Try on Portal

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-policy%2Fmaster%2Fsamples%2FMonitoring%2Faudit-enabling-diagnostic-logs-logic-apps%2Fazurepolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "audit-enabling-diagnostic-logs-logic-apps" -DisplayName "Audit enabling of diagnostic logs in Logic Apps" -description "Audit enabling of logs and retain them up to a year. This enables you to recreate activity trails for investigation purposes when a security incident occurs or your network is compromised." -Policy 'https://raw.githubusercontent.com/Azure/azure-policy/master/samples/Monitoring/audit-enabling-diagnostic-logs-logic-apps/azurepolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/Azure/azure-policy/master/samples/Monitoring/audit-enabling-diagnostic-logs-logic-apps/azurepolicy.parameters.json' -Mode Indexed
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -requiredRetentionDays <requiredRetentionDays> -PolicyDefinition $definition
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'audit-enabling-diagnostic-logs-logic-apps' --display-name 'Audit enabling of diagnostic logs in Logic Apps' --description 'Audit enabling of logs and retain them up to a year. This enables you to recreate activity trails for investigation purposes when a security incident occurs or your network is compromised.' --rules 'https://raw.githubusercontent.com/Azure/azure-policy/master/samples/Monitoring/audit-enabling-diagnostic-logs-logic-apps/azurepolicy.rules.json' --params 'https://raw.githubusercontent.com/Azure/azure-policy/master/samples/Monitoring/audit-enabling-diagnostic-logs-logic-apps/azurepolicy.parameters.json' --mode Indexed

az policy assignment create --name <assignmentname> --scope <scope> --params "{'requiredRetentionDays':{'value': '<requiredRetentionDays>'}}" --policy "audit-enabling-diagnostic-logs-logic-apps" 

````
