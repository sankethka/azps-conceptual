---
external help file: Microsoft.Azure.Commands.ResourceManager.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 721E368D-881F-4A1E-B8BF-C7F77A7BABBF
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v2.2.0/Get-AzureRMAutomationWebhook.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v2.2.0/Get-AzureRMAutomationWebhook.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v2.2.0/Get-AzureRMAutomationWebhook.md
ms.topic: reference
ms.prod: powershell
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: erickson-doug
open_to_public_contributors: False
ms.service: azure-powershell
---

# Get-AzureRmAutomationWebhook

## SYNOPSIS
Gets webhooks from Automation.

## SYNTAX

### ByAll (Default)
```
Get-AzureRmAutomationWebhook [-ResourceGroupName] <String> [-AutomationAccountName] <String>
 [<CommonParameters>]
```

### ByName
```
Get-AzureRmAutomationWebhook -Name <String> [-ResourceGroupName] <String> [-AutomationAccountName] <String>
 [<CommonParameters>]
```

### ByRunbookName
```
Get-AzureRmAutomationWebhook -RunbookName <String> [-ResourceGroupName] <String>
 [-AutomationAccountName] <String> [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmAutomationWebhook** cmdlet gets webhooks.
To get specific webhooks, specify a webhook name or specify the name of an Azure Automation runbook to get the webhooks connected to it.

## EXAMPLES

### Example 1: Get all webhooks for a runbook
```
PS C:\>Get-AzureRmAutomationWebhook -RunbookName "Runbook03" -ResourceGroup "ResourceGroup01" -AutomationAccountName "AutomationAccount01"
```

This command gets all webhooks for a runbook named Runbook03 in the Automation account named AutomationAccount01 in the resource group named ResourceGroup01.

## PARAMETERS

### -AutomationAccountName
Specifies the name of an Automation account in which this cmdlet gets a webhook.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of the webhook that this cmdlet gets.

```yaml
Type: String
Parameter Sets: ByName
Aliases: WebhookName

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group for which this cmdlet gets webhooks.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -RunbookName
Specifies the name of a runbook for which this cmdlet gets webhooks.

```yaml
Type: String
Parameter Sets: ByRunbookName
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[New-AzureRmAutomationWebhook](xref:ResourceManager/AzureRM.Automation/v2.2.0/New-AzureRMAutomationWebhook.md)

[Remove-AzureRmAutomationWebhook](xref:ResourceManager/AzureRM.Automation/v2.2.0/Remove-AzureRMAutomationWebhook.md)

[Set-AzureRmAutomationWebhook](xref:ResourceManager/AzureRM.Automation/v2.2.0/Set-AzureRMAutomationWebhook.md)


