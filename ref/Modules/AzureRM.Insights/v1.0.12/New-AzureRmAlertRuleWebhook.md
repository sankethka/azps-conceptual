---
external help file: Microsoft.Azure.Commands.Insights.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 2AF0D56E-542D-48DC-AF5D-B8752E0C343A
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Insights/v1.0.12/New-AzureRmAlertRuleWebhook.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Insights/v1.0.12/New-AzureRmAlertRuleWebhook.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Insights/v1.0.12/New-AzureRmAlertRuleWebhook.md
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

# New-AzureRmAlertRuleWebhook

## SYNOPSIS
Creates an alert rule webhook.

## SYNTAX

```
New-AzureRmAlertRuleWebhook [-ServiceUri] <String> [[-Properties] <Hashtable>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmAlertRuleWebhook** cmdlet creates an alert rule webhook.

## EXAMPLES

### Example 1: Create an alert rule webhook
```
PS C:\>New-AzureRmAlertRuleWebhook -ServiceUri "http://contoso.com"
```

This command creates an alert rule webhook by specifying only the service URI.

### Example 2: Create a webhook with one property
```
PS C:\>$Actual = New-AzureRmAlertRuleWebhook -ServiceUri "http://contoso.com" -Properties @{prop1 = 'value1'}
```

This command creates an alert rule webhook for Contoso.com that has one property, and then stores it in the $Actual variable.

## PARAMETERS

### -ServiceUri
Specifies the service URI.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Properties
Specifies the list of properties in the format @(property1 = 'value1',....).

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
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

[Add-AzureRmLogAlertRule](xref:ResourceManager/AzureRM.Insights/v1.0.12/Add-AzureRmLogAlertRule.md)

[Add-AzureRmMetricAlertRule](xref:ResourceManager/AzureRM.Insights/v1.0.12/Add-AzureRmMetricAlertRule.md)

[Add-AzureRmWebtestAlertRule](xref:ResourceManager/AzureRM.Insights/v1.0.12/Add-AzureRmWebtestAlertRule.md)

[New-AzureRmAlertRuleEmail](xref:ResourceManager/AzureRM.Insights/v1.0.12/New-AzureRmAlertRuleEmail.md)

[New-AzureRmAutoscaleWebhook](xref:ResourceManager/AzureRM.Insights/v1.0.12/New-AzureRmAutoscaleWebhook.md)


