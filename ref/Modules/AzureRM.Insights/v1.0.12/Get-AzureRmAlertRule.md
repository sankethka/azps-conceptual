---
external help file: Microsoft.Azure.Commands.Insights.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: FD0B7DB9-41BC-4DB5-A583-BBF76DEE93A7
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Insights/v1.0.12/Get-AzureRmAlertRule.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Insights/v1.0.12/Get-AzureRmAlertRule.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Insights/v1.0.12/Get-AzureRmAlertRule.md
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

# Get-AzureRmAlertRule

## SYNOPSIS
Gets alert rules.

## SYNTAX

### Parameters for Get-AzureRmAlertRule cmdlet using target resource uri
```
Get-AzureRmAlertRule -ResourceGroup <String> -TargetResourceId <String> [-DetailedOutput] [<CommonParameters>]
```

### Parameters for Get-AzureRmAlertRule cmdlet
```
Get-AzureRmAlertRule -ResourceGroup <String> [-DetailedOutput] [<CommonParameters>]
```

### Parameters for Get-AzureRmAlertRule cmdlet using name
```
Get-AzureRmAlertRule -ResourceGroup <String> -Name <String> [-DetailedOutput] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmAlertRule** cmdlet gets an alert rule by its name or URI, or all alert rules from a specified resource group.

## EXAMPLES

### Example 1: Get alert rules for a resource group
```
PS C:\>Get-AzureRmAlertRule -ResourceGroup "Default-Web-CentralUS"
```

This command gets all of the alert rules for the resource group named Default-Web-CentralUS.
The output does not contain details about the rules because the *DetailedOutput* parameter is not specified.

### Example 2: Get an alert rule by name
```
PS C:\>Get-AzureRmAlertRule -ResourcGroup "Default-Web-CentralUS" -Name "myalert-7da64548-214d-42ca-b12b-b245bb8f0ac8"
```

This command gets the alert rule named myalert-7da64548-214d-42ca-b12b-b245bb8f0ac8.
Because the *DetailedOutput* parameter is not specified, the output contains only basic information about the alert rule.

### Example 3: Get an alert rule by name with detailed output
```
PS C:\>Get-AzureRmAlertRule -ResourceGroup "Default-Web-CentralUS" -Name "myalert-7da64548-214d-42ca-b12b-b245bb8f0ac8" -DetailedOutput
```

This command gets the alert rule named myalert-7da64548-214d-42ca-b12b-b245bb8f0ac8.
The *DetailedOutput* parameter is specified, so the output is detailed.

## PARAMETERS

### -ResourceGroup
Specifies the name of the resource group.

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

### -DetailedOutput
Displays full details in the output.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of the alert rule to get.

```yaml
Type: String
Parameter Sets: Parameters for Get-AzureRmAlertRule cmdlet using name
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TargetResourceId
Specifies the ID of the target resource.

```yaml
Type: String
Parameter Sets: Parameters for Get-AzureRmAlertRule cmdlet using target resource uri
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

[Add-AzureRmLogAlertRule](xref:ResourceManager/AzureRM.Insights/v1.0.12/Add-AzureRmLogAlertRule.md)

[Add-AzureRmMetricAlertRule](xref:ResourceManager/AzureRM.Insights/v1.0.12/Add-AzureRmMetricAlertRule.md)

[Add-AzureRmWebtestAlertRule](xref:ResourceManager/AzureRM.Insights/v1.0.12/Add-AzureRmWebtestAlertRule.md)

[Get-AzureRmAlertHistory](xref:ResourceManager/AzureRM.Insights/v1.0.12/Get-AzureRmAlertHistory.md)

[Remove-AzureRmAlertRule](xref:ResourceManager/AzureRM.Insights/v1.0.12/Remove-AzureRmAlertRule.md)


