---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
ms.assetid: 47FE9EF4-6000-4096-8F04-26A0C6661FDB
online version: 
schema: 2.0.0
updated_at: 2/8/2017 5:57 PM
ms.date: 2/8/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.3.0/Remove-AzureRmVirtualNetworkSubnetConfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.3.0/Remove-AzureRmVirtualNetworkSubnetConfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/2e14c401885f4d09875d76bbfaed9ed2f4a506a8/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.3.0/Remove-AzureRmVirtualNetworkSubnetConfig.md
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

# Remove-AzureRmVirtualNetworkSubnetConfig

## SYNOPSIS
Removes a subnet configuration from a virtual network.

## SYNTAX

```
Remove-AzureRmVirtualNetworkSubnetConfig [-Name <String>] -VirtualNetwork <PSVirtualNetwork>
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureRmVirtualNetworkSubnetConfig** cmdlet removes a subnet from an Azure virtual network.

## EXAMPLES

### Example 1: Remove a subnet from a virtual network and update the virtual network
```
PS C:\> Remove-AzureRmVirtualNetworkSubnetConfig -Name "BackendSubnet" -VirtualNetwork $VirtualNetwork
PS C:\> $VirtualNetwork | Set-AzureRmVirtualNetwork
```

The first command removes a subnet called BackendSubnet from a virtual network.
The virtual network was previously stored in the $VirtualNetwork variable.

The second command updates the virtual network on the server by using the **Set-AzureRmVirtualNetwork** cmdlet. 
   

## PARAMETERS

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

### -Name
Specifies the name of the subnet configuration to remove.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VirtualNetwork
Specifies the **VirtualNetwork** object that contains the subnet configuration to remove.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AzureRmVirtualNetworkSubnetConfig](xref:ResourceManager/AzureRM.Network/v3.3.0/Add-AzureRmVirtualNetworkSubnetConfig.md)

[Get-AzureRmVirtualNetworkSubnetConfig](xref:ResourceManager/AzureRM.Network/v3.3.0/Get-AzureRmVirtualNetworkSubnetConfig.md)

[New-AzureRmVirtualNetworkSubnetConfig](xref:ResourceManager/AzureRM.Network/v3.3.0/New-AzureRmVirtualNetworkSubnetConfig.md)

[Set-AzureRmVirtualNetwork](xref:ResourceManager/AzureRM.Network/v3.3.0/Set-AzureRmVirtualNetwork.md)

[Set-AzureRmVirtualNetworkSubnetConfig](xref:ResourceManager/AzureRM.Network/v3.3.0/Set-AzureRmVirtualNetworkSubnetConfig.md)
