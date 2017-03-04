---
external help file: Microsoft.Azure.Commands.EventHub.dll-Help.xml
online version: 
schema: 2.0.0
updated_at: 2/22/2017 7:15 PM
ms.date: 2/22/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHubAuthorizationRule.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHubAuthorizationRule.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f82591a45d87319edcec5b3300adffa5a4f64654/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHubAuthorizationRule.md
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

# Get-AzureRmEventHubAuthorizationRule

## SYNOPSIS
Gets the details of an authorization rule, or gets a list of authorization rules.

## SYNTAX

```
Get-AzureRmEventHubAuthorizationRule [-ResourceGroupName] <String> [-NamespaceName] <String>
 [-EventHubName] <String> [-AuthorizationRuleName <String>] [<CommonParameters>]
```

## DESCRIPTION

The **Get-AzureRmEventHubAuthorizationRule** cmdlet gets the details of an authorization rule or a list of all authorization rules for a specified Event Hub. If the name of an authorization rule is provided, the details of that single authorization rule are returned. If the name of an authorization rule is not provided, a list of all authorization rules for the specified Event Hub is returned.



## EXAMPLES

### Example 1: Get an Event Hub authorization rule
```
PS C:\> Get-AzureRmEventHubAuthorizationRule -ResourceGroupName "MyResourceGroupName" -NamespaceName "MyNamespaceName" -EventHubName "MyEventHubName" -AuthorizationRule "MyAuthRuleName"
```

This command gets the authorization rule named MyAuthRuleName in the Event Hub named MyEventHubName that is contained in the namespace named Namespace001.

### Example 2: Get an Event Hub authorization rule
```
PS C:\> Get-AzureRmEventHubAuthorizationRule -ResourceGroupName "MyResourceGroupName" -NamespaceName "MyNamespaceName" -EventHubName "MyEventHubName"
```

This command gets the all authorization rules in the Event Hub named MyEventHubName that is contained in the namespace named Namespace001.

## PARAMETERS

### -AuthorizationRuleName
Specifies the name of the Event Hub Authorization Rule that this cmdlet gets.


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


### -EventHubName
Specifies name of the Event Hub.


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


### -NamespaceName
Specifies the name of the namespace.


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


### -ResourceGroupName
Specifies the name of the resource group.


```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

## OUTPUTS

### System.Collections.Generic.List`1[[Microsoft.Azure.Commands.EventHub.Models.SharedAccessAuthorizationRuleAttributes, Microsoft.Azure.Commands.EventHub, Version=0.0.1.0, Culture=neutral, PublicKeyToken=null]]

## NOTES

## RELATED LINKS

[New-AzureRmEventHubAuthorizationRule](xref:ResourceManager/AzureRM.EventHub/v0.0.2/New-AzureRmEventHubAuthorizationRule.md)

[Remove-AzureRmEventHubAuthorizationRule](xref:ResourceManager/AzureRM.EventHub/v0.0.2/Remove-AzureRmEventHubAuthorizationRule.md)

[Set-AzureRmEventHubAuthorizationRule](xref:ResourceManager/AzureRM.EventHub/v0.0.2/Set-AzureRmEventHubAuthorizationRule.md)
