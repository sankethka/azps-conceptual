---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
ms.assetid: 93D8A341-540A-43F1-8C62-28323EAA58E0
online version: 
schema: 2.0.0
updated_at: 1/11/2017 4:58 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.1.0/Set-AzureRmVirtualNetwork.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.1.0/Set-AzureRmVirtualNetwork.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/019d55e5427f1b23a116603492cb2a1977604795/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.1.0/Set-AzureRmVirtualNetwork.md
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

# Set-AzureRmVirtualNetwork

## SYNOPSIS
Sets the goal state for a virtual network.

## SYNTAX

```
Set-AzureRmVirtualNetwork -VirtualNetwork <PSVirtualNetwork> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmVirtualNetwork** cmdlet sets the goal state for an Azure virtual network.

## EXAMPLES

## PARAMETERS

### -VirtualNetwork
Specifies a **VirtualNetwork** object that represents the goal state.

```yaml
Type: PSVirtualNetwork
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -InformationAction
Specifies how this cmdlet responds to an information event.

The acceptable values for this parameter are:

- Continue
- Ignore
- Inquire
- SilentlyContinue
- Stop
- Suspend

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: infa

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InformationVariable
Specifies an information variable.

```yaml
Type: String
Parameter Sets: (All)
Aliases: iv

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureRmVirtualNetwork](xref:ResourceManager/AzureRM.Network/v3.1.0/Get-AzureRmVirtualNetwork.md)

[Get-AzureRmVirtualNetwork](xref:ResourceManager/AzureRM.Network/v3.1.0/Get-AzureRmVirtualNetwork.md)

[New-AzureRmVirtualNetwork](xref:ResourceManager/AzureRM.Network/v3.1.0/New-AzureRmVirtualNetwork.md)

[Remove-AzureRmVirtualNetwork](xref:ResourceManager/AzureRM.Network/v3.1.0/Remove-AzureRmVirtualNetwork.md)
