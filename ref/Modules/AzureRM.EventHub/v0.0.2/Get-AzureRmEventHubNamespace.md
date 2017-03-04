---
external help file: Microsoft.Azure.Commands.EventHub.dll-Help.xml
online version: 
schema: 2.0.0
updated_at: 2/22/2017 7:45 PM
ms.date: 2/22/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHubNamespace.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHubNamespace.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/701a73c74251331b2c62a044b3a8127922088dac/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHubNamespace.md
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

# Get-AzureRmEventHubNamespace

## SYNOPSIS
Gets the details of an Event Hubs namespace or gets a list of all Event Hubs namespaces in the current Azure subscription.

## SYNTAX

```
Get-AzureRmEventHubNamespace [[-ResourceGroupName] <String>] [[-NamespaceName] <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmEventHubNamespace** cmdlet gets either the details of a specified Event Hubs namespace or a list of all Event Hubs namespaces in the current Azure subscription. If the namespace name is provided, the details of a single Event Hubs namespace is returned. If the namespace name is not provided, a list of namespaces is returned.

## EXAMPLES

### Example 1
```
PS C:\> Get-AzureRmEventHubNamespace -ResourceGroupName "MyResourceGroupName" -NamespaceName "MyNamespaceName"
```

This command gets the details of the Event Hubs namespace named MyNamespaceName that is contained in the resource group named MyResourceGroupName.

## PARAMETERS

### -NamespaceName
Specifies the name of the namespace.


```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group that contains the Event Hub.


```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

## OUTPUTS

### System.Collections.Generic.List`1[[Microsoft.Azure.Commands.EventHub.Models.NamespaceAttributes, Microsoft.Azure.Commands.EventHub, Version=0.0.1.0, Culture=neutral, PublicKeyToken=null]]

## NOTES

## RELATED LINKS

[New-AzureRmEventHubNamespace](xref:ResourceManager/AzureRM.EventHub/v0.0.2/New-AzureRmEventHubNamespace.md)

[Remove-AzureRmEventHubNamespace](xref:ResourceManager/AzureRM.EventHub/v0.0.2/Remove-AzureRmEventHubNamespace.md)

[Set-AzureRmEventHubNamespace](xref:ResourceManager/AzureRM.EventHub/v0.0.2/Set-AzureRmEventHubNamespace.md)
