---
external help file: Microsoft.Azure.Commands.Insights.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 93523A84-B5F4-40F9-B7CA-F8C74013A8CF
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Insights/v2.1.0/Remove-AzureRmAlertRule.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Insights/v2.1.0/Remove-AzureRmAlertRule.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Insights/v2.1.0/Remove-AzureRmAlertRule.md
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

# Remove-AzureRmAlertRule

## SYNOPSIS
Removes an alert rule.

## SYNTAX

```
Remove-AzureRmAlertRule -ResourceGroup <String> -Name <String> [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureRmAlertRule** cmdlet removes an alert rule.
You must specify the name of the alert rule and the resource group to which it is assigned.

## EXAMPLES

### Example 1: Remove an alert rule
```
PS C:\>Remove-AzureRmAlertRule -ResourceGroup "Default-Web-CentralUS" -Name "myalert-7da64548-214d-42ca-b12b-b245bb8f0ac8"
RequestId                                                                                                    StatusCode
---------                                                                                                    ----------
2c6c159b-0e73-4a01-a67b-c32c1a0008a3                                                                                 OK
```

This command removes the alert rule named myalert-7da64548-214d-42ca-b12b-b245bb8f0ac8 in the resource group Default-Web-CentralUS.

## PARAMETERS

### -ResourceGroup
Specifies the name of the resource group for the alert rule.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of the alert rule to remove.

```yaml
Type: String
Parameter Sets: (All)
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

[Add-AzureRmLogAlertRule](xref:ResourceManager/AzureRM.Insights/v2.1.0/Add-AzureRmLogAlertRule.md)

[Add-AzureRmMetricAlertRule](xref:ResourceManager/AzureRM.Insights/v2.1.0/Add-AzureRmMetricAlertRule.md)

[Add-AzureRmWebtestAlertRule](xref:ResourceManager/AzureRM.Insights/v2.1.0/Add-AzureRmWebtestAlertRule.md)

[Get-AzureRmAlertHistory](xref:ResourceManager/AzureRM.Insights/v2.1.0/Get-AzureRmAlertHistory.md)

[Get-AzureRmAlertRule](xref:ResourceManager/AzureRM.Insights/v2.1.0/Get-AzureRmAlertRule.md)


