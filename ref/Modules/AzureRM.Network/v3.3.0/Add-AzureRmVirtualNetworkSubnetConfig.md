---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
ms.assetid: B8B632B5-9D3B-4352-B4C8-49C00472B3A7
online version: 
schema: 2.0.0
updated_at: 1/27/2017 11:33 PM
ms.date: 1/27/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.3.0/Add-AzureRmVirtualNetworkSubnetConfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.3.0/Add-AzureRmVirtualNetworkSubnetConfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/75c2612a304afa30be3335526e5ebebc3156ed01/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.3.0/Add-AzureRmVirtualNetworkSubnetConfig.md
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

# Add-AzureRmVirtualNetworkSubnetConfig

## SYNOPSIS
Adds a subnet configuration to a virtual network.

## SYNTAX

### SetByResource (Default)
```
Add-AzureRmVirtualNetworkSubnetConfig -Name <String> -VirtualNetwork <PSVirtualNetwork> -AddressPrefix <String>
 [-NetworkSecurityGroup <PSNetworkSecurityGroup>] [-RouteTable <PSRouteTable>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### SetByResourceId
```
Add-AzureRmVirtualNetworkSubnetConfig -Name <String> -VirtualNetwork <PSVirtualNetwork> -AddressPrefix <String>
 [-NetworkSecurityGroupId <String>] [-RouteTableId <String>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Add-AzureRmVirtualNetworkSubnetConfig** cmdlet adds a subnet configuration to an existing Azure virtual network.

## EXAMPLES

### Example 1: Add a subnet to an existing virtual network
```<
PS C:\> New-AzureRmResourceGroup -Name "ResourceGroup03" -Location centralus 
PS C:\> $FrontendSubnet = New-AzureRmVirtualNetworkSubnetConfig -Name "FrontendSubnet" -AddressPrefix "10.0.1.0/24"
PS C:\> $VirtualNetwork = New-AzureRmVirtualNetwork -Name "MyVirtualNetwork" -ResourceGroupName "ResourceGroup03" -Location centralus -AddressPrefix "10.0.0.0/16" -Subnet $FrontendSubnet
PS C:\> Add-AzureRmVirtualNetworkSubnetConfig -Name "BackendSubnet" -VirtualNetwork $VirtualNetwork -AddressPrefix "10.0.2.0/24" $VirtualNetwork | Set-AzureRmVirtualNetwork

```

The first command creates a resource group as a container of the resources to be created. 

The second command creates a subnet configuration named FrontendSubnet.

The third command creates a virtual network named MyVirtualNetwork.

The final command adds a subnet to the in-memory representation of the virtual network by using the **Add-AzureRmVirtualNetworkSubnetConfig** cmdlet.  
The command updates the existing virtual network with the new subnet by using the **Set-AzureRmVirtualNetwork** cmdlet.


## PARAMETERS

### -AddressPrefix
Specifies a range of IP addresses for a subnet configuration.

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
Specifies the name of the subnet configuration to add.

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

### -NetworkSecurityGroup
Specifies a **NetworkSecurityGroup** object.
This cmdlet adds a virtual network subnet configuration to the object that this parameter specifies.

```yaml
Type: PSNetworkSecurityGroup
Parameter Sets: SetByResource
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -NetworkSecurityGroupId
Specifies the ID of a network security group.

```yaml
Type: String
Parameter Sets: SetByResourceId
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -RouteTable
Specifies the route table to which this cmdlet adds a virtual network subnet configuration.

```yaml
Type: PSRouteTable
Parameter Sets: SetByResource
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -RouteTableId
Specifies the ID of the route table associated with the subnet configuration.

```yaml
Type: String
Parameter Sets: SetByResourceId
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -VirtualNetwork
Specifies the **VirtualNetwork** object in which to add a subnet configuration.

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

[Get-AzureRmVirtualNetworkSubnetConfig](xref:ResourceManager/AzureRM.Network/v3.3.0/Get-AzureRmVirtualNetworkSubnetConfig.md)

[New-AzureRmVirtualNetworkSubnetConfig](xref:ResourceManager/AzureRM.Network/v3.3.0/New-AzureRmVirtualNetworkSubnetConfig.md)

[Remove-AzureRmVirtualNetworkSubnetConfig](xref:ResourceManager/AzureRM.Network/v3.3.0/Remove-AzureRmVirtualNetworkSubnetConfig.md)

[Set-AzureRmVirtualNetwork](xref:ResourceManager/AzureRM.Network/v3.3.0/Set-AzureRmVirtualNetwork.md)

[Set-AzureRmVirtualNetworkSubnetConfig](xref:ResourceManager/AzureRM.Network/v3.3.0/Set-AzureRmVirtualNetworkSubnetConfig.md)
