---
external help file: Microsoft.Azure.Commands.EventHub.dll-Help.xml
online version: 
schema: 2.0.0
updated_at: 2/22/2017 7:15 PM
ms.date: 2/22/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHubConsumerGroup.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHubConsumerGroup.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f82591a45d87319edcec5b3300adffa5a4f64654/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHubConsumerGroup.md
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

# Get-AzureRmEventHubConsumerGroup

## SYNOPSIS
Gets the details of a specified Event Hubs consumer group, or gets a list of consumer groups in an Event Hub.

## SYNTAX

```
Get-AzureRmEventHubConsumerGroup [-ResourceGroupName] <String> [-NamespaceName] <String>
 [-EventHubName] <String> [[-ConsumerGroupName] <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmEventHubConsumerGroup** cmdlet gets either the details of a specified Event Hubs consumer group, or a list of consumer groups in a given Event Hub. If the name of a consumer group is provided, the details of a single consumer group details are returned. If the name of a consumer group is not provided, a list of consumer groups in the specified Event Hub is returned.

## EXAMPLES

### Example 1: Get a specific Event Hub consumer group
```

PS C:\> Get-AzureRmEventHubConsumerGroup -ResourceGroupName "MyResourceGroupName" -NamespaceName "MyNamespaceName" -EventHubName "MyEventHubName" -ConsumerGroupName "MyConsumerGroupName"
```

This command gets the consumer group named MyConsumerGroupName in the Event Hub named MyEventHubName that exists in the namespace named MyNamespaceName.

### Example 2: Get all Event Hub consumer groups
```
PS C:\> Get-AzureRmEventHubConsumerGroup -ResourceGroupName "MyResourceGroupName" -NamespaceName "MyNamespaceName" -EventHubName "MyEventHubName"
```

This command gets all consumer groups in the Event Hub named MyEventHubName that exists in the namespace named MyNamespaceName.


## PARAMETERS

### -ConsumerGroupName
Specifies the name of the consumer group that this cmdlet gets.


```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -EventHubName
Specifies the name of the Event Hub.


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

### -NamespaceName
Specifies the name of the namespace.


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
Specifies the name of the resource group that contains the Event Hub.


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

### System.Collections.Generic.List`1[[Microsoft.Azure.Commands.EventHub.Models.ConsumerGroupAttributes, Microsoft.Azure.Commands.EventHub, Version=0.0.1.0, Culture=neutral, PublicKeyToken=null]]

## NOTES

## RELATED LINKS

[New-AzureRmEventHubConsumerGroup](xref:ResourceManager/AzureRM.EventHub/v0.0.2/New-AzureRmEventHubConsumerGroup.md)

[Remove-AzureRmEventHubConsumerGroup](xref:ResourceManager/AzureRM.EventHub/v0.0.2/Remove-AzureRmEventHubConsumerGroup.md)

[Set-AzureRmEventHubConsumerGroup](xref:ResourceManager/AzureRM.EventHub/v0.0.2/Set-AzureRmEventHubConsumerGroup.md)
