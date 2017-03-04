---
external help file: Microsoft.Azure.Commands.EventHub.dll-Help.xml
online version: 
schema: 2.0.0
updated_at: 2/22/2017 7:15 PM
ms.date: 2/22/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHub.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHub.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f82591a45d87319edcec5b3300adffa5a4f64654/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHub.md
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

# Get-AzureRmEventHub

## SYNOPSIS
Gets the details of a single Event Hub, or gets a list of Event Hubs.

## SYNTAX

```
Get-AzureRmEventHub [-ResourceGroupName] <String> [-NamespaceName] <String> [[-EventHubName] <String>]
 [<CommonParameters>]
```

## DESCRIPTION

The **Get-AzureRmEventHub** cmdlet gets either the details of an Event Hub, or a list of all Event Hubs in the current namespace. If the Event Hub name is provided, the details of a single Event Hub are returned. If an Event Hub name is not provided, a list of all Event Hubs in the specified namespace is returned.


## EXAMPLES

### Example 1: Get details of a specific Event Hub
```

PS C:\> Get-AzureRmEventHub -ResourceGroupName "ResourceGroup001" -NamespaceName "ContosoNamespace" -EventHubName "EventHub002"
```

This command gets the details of the Event Hub named EventHub002 that is contained in the resource group named ResourceGroup001.

### Example 2: Get details of all Event Hubs in the specified namespace
```
PS C:\> Get-AzureRmEventHub -ResourceGroup "ResourceGroup002" -NamespaceName "ContosoNamespace"
```

This command gets the details of all Event Hubs that belong to the namespace named ContosoNamespace that is contained in the resource group named ResourceGroup001.


## PARAMETERS

### -EventHubName
Specifies the name of the Event Hub that this cmdlet gets.


```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -NamespaceName
Specifies the name of the namespace that this cmdlet gets Event Hubs from.


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
Specifies the name of the resource group.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

## OUTPUTS

### System.Collections.Generic.List`1[[Microsoft.Azure.Commands.EventHub.Models.EventHubAttributes, Microsoft.Azure.Commands.EventHub, Version=0.0.1.0, Culture=neutral, PublicKeyToken=null]]

## NOTES

## RELATED LINKS

[New-AzureRmEventHub](xref:ResourceManager/AzureRM.EventHub/v0.0.2/New-AzureRmEventHub.md)

[Remove-AzureRmEventHub](xref:ResourceManager/AzureRM.EventHub/v0.0.2/Remove-AzureRmEventHub.md)

[Set-AzureRmEventHub](xref:ResourceManager/AzureRM.EventHub/v0.0.2/Set-AzureRmEventHub.md)
