---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 838628EA-F7D7-488B-A3C2-2615B1ED5B58
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/New-AzureRmRouteConfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/New-AzureRmRouteConfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/New-AzureRmRouteConfig.md
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

# New-AzureRmRouteConfig

## SYNOPSIS
Creates a route for a route table.

## SYNTAX

```
New-AzureRmRouteConfig -Name <String> [-AddressPrefix <String>] -NextHopType <String>
 [-NextHopIpAddress <String>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmRouteConfig** cmdlet creates a route for an Azure route table.

## EXAMPLES

### Example 1: Create a route
```
PS C:\>$Route = New-AzureRmRouteConfig -Name "Route07" -AddressPrefix 10.1.0.0/16 -NextHopType "VnetLocal"
PS C:\> $Route
Name              : Route07
Id                : 
Etag              : 
ProvisioningState : 
AddressPrefix     : 10.1.0.0/16
NextHopType       : VnetLocal
NextHopIpAddress  :
```

The first command creates a route named Route07, and then stores it in the $Route variable.
This route forwards packets to the local virtual network.

The second command displays the properties of the route.

## PARAMETERS

### -Name
Specifies a name for the route.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AddressPrefix
Specifies the destination, in Classless Interdomain Routing (CIDR) format, to which the route applies.

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

### -NextHopType
Specifies how this route forwards packets.
The acceptable values for this parameter are:

- Internet.
The default Internet gateway provided by Azure. 
- None.
If you specify this value, the route does not forward packets. 
- VirtualAppliance.
A virtual appliance that you add to your Azure virtual network. 
- VirtualNetworkGateway.
An Azure server-to-server virtual private network gateway. 
- VnetLocal.
The local virtual network.
If you have two subnets, 10.1.0.0/16 and 10.2.0.0/16 in the same virtual network, select a value of VnetLocal for each subnet to forward to the other subnet.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NextHopIpAddress
Specifies the IP address of a virtual appliance that you add to your Azurevirtual network.
This route forwards packets to that address.
Specify this parameter only if you specify a value of VirtualAppliance for the *NextHopType* parameter.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AzureRmRouteConfig](xref:ResourceManager/AzureRM.Network/v3.0.0/Add-AzureRmRouteConfig.md)

[Get-AzureRmRouteConfig](xref:ResourceManager/AzureRM.Network/v3.0.0/Get-AzureRmRouteConfig.md)

[Remove-AzureRmRouteConfig](xref:ResourceManager/AzureRM.Network/v3.0.0/Remove-AzureRmRouteConfig.md)

[Set-AzureRmRouteConfig](xref:ResourceManager/AzureRM.Network/v3.0.0/Set-AzureRmRouteConfig.md)


