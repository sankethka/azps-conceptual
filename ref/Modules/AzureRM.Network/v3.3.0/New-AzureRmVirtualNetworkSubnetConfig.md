---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
ms.assetid: 901FD38B-67FA-40D5-8D23-51E5544C25D8
online version: 
schema: 2.0.0
updated_at: 2/8/2017 5:57 PM
ms.date: 2/8/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.3.0/New-AzureRmVirtualNetworkSubnetConfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.3.0/New-AzureRmVirtualNetworkSubnetConfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/2e14c401885f4d09875d76bbfaed9ed2f4a506a8/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.3.0/New-AzureRmVirtualNetworkSubnetConfig.md
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

# New-AzureRmVirtualNetworkSubnetConfig

## SYNOPSIS
Creates a virtual network subnet configuration.

## SYNTAX

### SetByResource (Default)
```
New-AzureRmVirtualNetworkSubnetConfig -Name <String> -AddressPrefix <String>
 [-NetworkSecurityGroup <PSNetworkSecurityGroup>] [-RouteTable <PSRouteTable>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### SetByResourceId
```
New-AzureRmVirtualNetworkSubnetConfig -Name <String> -AddressPrefix <String> [-NetworkSecurityGroupId <String>]
 [-RouteTableId <String>] [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

## DESCRIPTION
**The New-AzureRmVirtualNetworkSubnetConfig** cmdlet creates a virtual network subnet configuration.

## EXAMPLES

### Example 1: Create a virtual network with two subnets and a network security group
```

PS C:\> New-AzureRmResourceGroup -Name "ResourceGroup03" -Location centralus
PS C:\> $RdpRule = New-AzureRmNetworkSecurityRuleConfig -Name "rdp-rule" -Description "Allow RDP" -Access Allow -Protocol Tcp -Direction Inbound -Priority 100 -SourceAddressPrefix Internet -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 3389
PS C:\> $NetworkSecurityGroup = New-AzureRmNetworkSecurityGroup -ResourceGroupName "ResourceGroup03" -Location centralus -Name "NSG-FrontEnd" -SecurityRules $RdpRule
PS C:\> $FrontendSubnet = New-AzureRmVirtualNetworkSubnetConfig -Name "FrontendSubnet" -AddressPrefix "10.0.1.0/24" -NetworkSecurityGroup $NetworkSecurityGroup
PS C:\> $BackendSubnet = New-AzureRmVirtualNetworkSubnetConfig -Name "BackendSubnet" -AddressPrefix "10.0.2.0/24" -NetworkSecurityGroup $NetworkSecurityGroup
PS C:\> New-AzureRmVirtualNetwork -Name MyVirtualNetwork -ResourceGroupName "ResourceGroup03" -Location centralus -AddressPrefix "10.0.0.0/16" -Subnet $FrontendSubnet,$BackendSubnet
```

The first command creates a resource group named ResourceGroup03 in the centralus region by using the **New-AzureRmResourceGroup** cmdlet.

The second command creates a rule that allows inbound RDP access.
The command stores the rule in the $RdpRule variable.

The third command creates a network security group that includes the rule in $RdpRule by using the **New-AzureRmNetworkSecurityGroup** cmdlet.
The command stores the group in the $NetworkSecurityGroup variable.

The fourth command creates a subnet called FrontendSubnet, and stores it in the $FrontendSubnet variable.

The fifth command creates a subnet called BackendSubnet, and stores it in the $BackendSubnet variable. 

The final command creates a virtual network that includes the two subnets created in the previous commands by using the **New-AzureRmVirtualNetwork** cmdlet. 
The subnets both reference the security group stored in $NetworkSecurityGroup.
That group includes the rule named rdp-rule.

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
Specifies the name of the subnet configuration to create.

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
Specifies a NetworkSecurityGroup object.

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
Specifies the route table associated with the subnet configuration.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AzureRmVirtualNetworkSubnetConfig](xref:ResourceManager/AzureRM.Network/v3.3.0/Add-AzureRmVirtualNetworkSubnetConfig.md)

[Get-AzureRmVirtualNetworkSubnetConfig](xref:ResourceManager/AzureRM.Network/v3.3.0/Get-AzureRmVirtualNetworkSubnetConfig.md)

[New-AzureRmNetworkSecurityGroup](xref:ResourceManager/AzureRM.Network/v3.3.0/New-AzureRmNetworkSecurityGroup.md)

[New-AzureRmResourceGroup](xref:ResourceManager/AzureRM.Network/v3.3.0/New-AzureRmResourceGroup.md)

[New-AzureRmVirtualNetwork](xref:ResourceManager/AzureRM.Network/v3.3.0/New-AzureRmVirtualNetwork.md)

[New-AzureRmVirtualNetworkSubnetConfig](xref:ResourceManager/AzureRM.Network/v3.3.0/New-AzureRmVirtualNetworkSubnetConfig.md)

[Remove-AzureRmVirtualNetworkSubnetConfig](xref:ResourceManager/AzureRM.Network/v3.3.0/Remove-AzureRmVirtualNetworkSubnetConfig.md)

[Set-AzureRmVirtualNetworkSubnetConfig](xref:ResourceManager/AzureRM.Network/v3.3.0/Set-AzureRmVirtualNetworkSubnetConfig.md)
