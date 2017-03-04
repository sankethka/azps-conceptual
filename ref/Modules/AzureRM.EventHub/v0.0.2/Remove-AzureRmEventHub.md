---
external help file: Microsoft.Azure.Commands.EventHub.dll-Help.xml
online version: 
schema: 2.0.0
updated_at: 2/22/2017 11:44 PM
ms.date: 2/22/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Remove-AzureRmEventHub.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Remove-AzureRmEventHub.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/436d324d72aca493554c6fd1aa91a3ea27361288/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Remove-AzureRmEventHub.md
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

# Remove-AzureRmEventHub

## SYNOPSIS
Removes the specified Event Hub.

## SYNTAX

```
Remove-AzureRmEventHub [-ResourceGroupName] <String> [-NamespaceName] <String> [-EventHubName] <String>
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureRmEventHub** cmdlet removes and deletes the specified Event Hub from the given namespace.

## EXAMPLES

### Example 1: Remove the specified Event Hub
```
PS C:\> Remove-AzureRmEventHub -ResourceGroupName "MyResourceGroupName" -NamespaceName "MyNamespaceName" -EventHubName "MyEventHubName"
```

This command removes the Event Hub named MyEventHubName from the namespace named MyNamespaceName.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS

[Get-AzureRmEventHub](xref:ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHub.md)

[New-AzureRmEventHub](xref:ResourceManager/AzureRM.EventHub/v0.0.2/New-AzureRmEventHub.md)

[Set-AzureRmEventHub](xref:ResourceManager/AzureRM.EventHub/v0.0.2/Set-AzureRmEventHub.md)
