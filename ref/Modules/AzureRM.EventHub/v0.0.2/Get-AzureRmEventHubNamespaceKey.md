---
external help file: Microsoft.Azure.Commands.EventHub.dll-Help.xml
online version: 
schema: 2.0.0
updated_at: 2/22/2017 10:30 PM
ms.date: 2/22/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHubNamespaceKey.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHubNamespaceKey.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f360fc15f38f659e96ffe9003ef1e0f2c25e8cc1/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHubNamespaceKey.md
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

# Get-AzureRmEventHubNamespaceKey

## SYNOPSIS
Gets the primary key details of the specified Event Hubs namespace authorization rule.

## SYNTAX

```
Get-AzureRmEventHubNamespaceKey [-ResourceGroupName] <String> [-NamespaceName] <String>
 -AuthorizationRuleName <String> [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmEventHubNamespaceKey** cmdlet returns the primary key details of the specified authorization rule in the given Event Hubs namespace.

## EXAMPLES

### Example 1: Get the details of the primary key for an authorization rule
```
PS C:\> Get-AzureRmEventHubNamespaceKey -ResourceGroupName "MyResourceGroupName" -NamespaceName "MyNamespaceName" -AuthorizationRuleName "MyAuthRuleName"
```

This command gets details of the primary key for the authorization rule named MyAuthRuleName in the Event Hubs namespace named MyNamespaceName that is contained in the resource group named MyResourceGroupName.

## PARAMETERS

### -NamespaceName
Specifies the name of the Event Hubs namespace that this cmdlet gets the primary key details from.

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


### -ResourceGroupName
Specifies the name of the resource group name.


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

### -AuthorizationRuleName
Specifies the name of the authorization rule on the Event Hubs namespace that this cmdlet gets.


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

### System.String

## OUTPUTS

### Microsoft.Azure.Commands.EventHub.Models.ListKeysAttributes

## NOTES

## RELATED LINKS

[New-AzureRmEventHubNamespaceKey](xref:ResourceManager/AzureRM.EventHub/v0.0.2/New-AzureRmEventHubNamespaceKey.md)
