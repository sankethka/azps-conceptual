---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: BD55F6FE-B7C1-45B3-ACEC-EA458870933B
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Set-AzureRmVirtualNetworkPeering.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Set-AzureRmVirtualNetworkPeering.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Set-AzureRmVirtualNetworkPeering.md
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

# Set-AzureRmVirtualNetworkPeering

## SYNOPSIS
Configures a virtual network peering.

## SYNTAX

```
Set-AzureRmVirtualNetworkPeering -VirtualNetworkPeering <PSVirtualNetworkPeering> [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmVirtualNetworkPeering** cmdlet configures a virtual network peering.

## EXAMPLES

### Example 1: Change forwarded traffic configuration of a virtual network peering
```
PS C:\>$LinkToVNet2 = Get-AzureRmVirtualNetworkPeering -VirtualNetworkName "VirtualNetwork17" -ResourceGroupName "ResourceGroup001" -Name "LinkToVNet2"
PS C:\> $LinkToVNet2.AllowForwardedTraffic = $True
PS C:\> Set-AzureRmVirtualNetworkPeering -VirtualNetworkPeering $LinkToVNet2
```

This example changes the forwarded traffic configuration to $True from the default value $False on a previously established VNet peering link.

The first command gets the link named LinkToVNet2 in ResourceGroup001 in the virtual network named VirtualNetwork17 by using the Get-AzureRmVirtualNetworkPeering cmdlet.
The command stores the result in the $LinkToVNet2 variable.

The second command changes the **AllowForwardedTraffic** property to $True.

The final command updates the settings for the LinkToVNet2 virtual network peering to the value in $LinkToVNet2.

### Example 2: Change virtual network access of a virtual network peering
```
PS C:\>$LinkToVNet2 = Get-AzureRmVirtualNetworkPeering -VirtualNetworkName "VirtualNetwork17" -ResourceGroupName "ResourceGroup001" -Name "LinkToVNet2"
PS C:\> $LinkToVNet2.AllowVirtualNetworkAccess = $False
PS C:\> Set-AzureRmVirtualNetworkPeering -VirtualNetworkPeering $LinkToVNet2
```

This example changes the virtual network access property configuration to $False from the default value $True on a previously established VNet peering link.

The first command gets the link named LinkToVNet2 in ResourceGroup001 in the virtual network named VirtualNetwork17 by using **Get-AzureRmVirtualNetworkPeering**.
The command stores the result in the $LinkToVNet2 variable.

The second command changes the **AllowVirtualNetworkAccess** property to $False.

The final command updates the settings for the LinkToVNet2 virtual network peering to the value in $LinkToVNet2.

### Example 3: Change gateway transit property configuration of a virtual network peering
```
PS C:\>$LinkToVNet2 = Get-AzureRmVirtualNetworkPeering -VirtualNetworkName "VirtualNetwork17" -ResourceGroupName "001ResourceGroup" -Name "LinkToVNet2"
PS C:\> $LinkToVNet2.AllowGatewayTransit = $True
PS C:\> Set-AzureRmVirtualNetworkPeering -VirtualNetworkPeering $LinkToVNet2
```

This changes the gateway transit property configuration to $True from the default value $False on a previously established VNet peering link.

The first command gets the link named LinkToVNet2 in ResourceGroup001 in the virtual network named VirtualNetwork17 by using **Get-AzureRmVirtualNetworkPeering**.
The command stores the result in the $LinkToVNet2 variable.

The second command changes the **AllowGatewayTransit** property to $True.

The final command updates the settings for the LinkToVNet2 virtual network peering to the value in $LinkToVNet2.

### Example 4: Use remote gateways in virtual network peering
```
PS C:\>$LinkToVNet2 = Get-AzureRmVirtualNetworkPeering -VirtualNetworkName "VirtualNetwork17" -ResourceGroupName "ResourceGroup001" -Name "LinkToVNet2"
PS C:\> $LinkToVNet2.UseRemoteGateways = $True
PS C:\> Set-AzureRmVirtualNetworkPeering -VirtualNetworkPeering $LinkToVNet2
```

This changes the remote gateway configuration to $True from the default value $False on a previously established VNet peering link.

The first command gets the link named LinkToVNet2 in ResourceGroup001 in the virtual network named VirtualNetwork17 by using **Get-AzureRmVirtualNetworkPeering**.
The command stores the result in the $LinkToVNet2 variable.

The second command changes the **UseRemoteGateways** property to $True.

The final command updates the settings for the LinkToVNet2 virtual network peering to the value in $LinkToVNet2.

By changing this property to $True, your peer's VNet gateway can be used.
However, the peer VNet must have a gateway configured and **AllowGatewayTransit** must have a value of $True.

This property cannot be used if a gateway has already been configured.

## PARAMETERS

### -VirtualNetworkPeering
Specifies the virtual network peering.

```yaml
Type: PSVirtualNetworkPeering
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AzureRmVirtualNetworkPeering](xref:ResourceManager/AzureRM.Network/v3.0.0/Add-AzureRmVirtualNetworkPeering.md)

[Get-AzureRmVirtualNetworkPeering](xref:ResourceManager/AzureRM.Network/v3.0.0/Get-AzureRmVirtualNetworkPeering.md)

[Remove-AzureRmVirtualNetworkPeering](xref:ResourceManager/AzureRM.Network/v3.0.0/Remove-AzureRmVirtualNetworkPeering.md)


