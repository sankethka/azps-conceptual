---
external help file: Microsoft.Azure.Commands.EventHub.dll-Help.xml
online version: 
schema: 2.0.0
updated_at: 2/23/2017 12:51 AM
ms.date: 2/23/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Set-AzureRmEventHub.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Set-AzureRmEventHub.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/7b9870d5bfb0bfd27d74f3d427a4016ef26a0298/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Set-AzureRmEventHub.md
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

# Set-AzureRmEventHub

## SYNOPSIS
Updates the specified Event Hub.

## SYNTAX

```
Set-AzureRmEventHub [-ResourceGroupName] <String> [-NamespaceName] <String> [-EventHubName] <String>
 [[-EventHubObj] <EventHubAttributes>] [-messageRetentionInDays <Int64>] [-partitionCount <Int64>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmEventHub** cmdlet updates the properties of the specified Event Hub.

## EXAMPLES

### Example 1: Update a specific Event Hub
```
PS C:\> Set-AzureRmEventHub -ResourceGroupName "MyResourceGroupName" -NamespaceName "MyNamespaceName" -EventHubName "MyEventHubName" -EventHubObj "MyCreatedEventHub" -messageRetentionInDays 4 -partitionCount 2
```

This command updates the Event Hub named MyEventHubName represented by the MyCreatedEventHub object, sets the message retention period to 4 days, and the number of partitions to 2.

## PARAMETERS

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -EventHubName
Specifies the name of the namespace.


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

### -EventHubObj
Specifies the Event Hubs object.

```yaml
Type: EventHubAttributes
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -NamespaceName
Specifies the name of the Event Hubs namespace.

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

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```


### -messageRetentionInDays
Specifies the Event Hub message retention period, in days.


```yaml
Type: Int64
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -partitionCount
Specifies the number of partitions on this Event Hub.

```yaml
Type: Int64
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

### Microsoft.Azure.Commands.EventHub.Models.EventHubAttributes

## NOTES

## RELATED LINKS

[Get-AzureRmEventHub](xref:ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHub.md)

[New-AzureRmEventHub](xref:ResourceManager/AzureRM.EventHub/v0.0.2/New-AzureRmEventHub.md)

[Remove-AzureRmEventHub](xref:ResourceManager/AzureRM.EventHub/v0.0.2/Remove-AzureRmEventHub.md)
