---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: CE7006FA-1169-4A58-9D32-12E9F0471BFB
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Add-AzureRmLoadBalancerFrontendIpConfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Add-AzureRmLoadBalancerFrontendIpConfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Add-AzureRmLoadBalancerFrontendIpConfig.md
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

# Add-AzureRmLoadBalancerFrontendIpConfig

## SYNOPSIS
Adds a front-end IP configuration to a load balancer.

## SYNTAX

### SetByResourceSubnet
```
Add-AzureRmLoadBalancerFrontendIpConfig -Name <String> -LoadBalancer <PSLoadBalancer>
 [-PrivateIpAddress <String>] -Subnet <PSSubnet> [<CommonParameters>]
```

### SetByResourceIdSubnet
```
Add-AzureRmLoadBalancerFrontendIpConfig -Name <String> -LoadBalancer <PSLoadBalancer>
 [-PrivateIpAddress <String>] -SubnetId <String> [<CommonParameters>]
```

### SetByResourceIdPublicIpAddress
```
Add-AzureRmLoadBalancerFrontendIpConfig -Name <String> -LoadBalancer <PSLoadBalancer>
 -PublicIpAddressId <String> [<CommonParameters>]
```

### SetByResourcePublicIpAddress
```
Add-AzureRmLoadBalancerFrontendIpConfig -Name <String> -LoadBalancer <PSLoadBalancer>
 -PublicIpAddress <PSPublicIpAddress> [<CommonParameters>]
```

## DESCRIPTION
The **Add-AzureRmLoadBalancerFrontendIpConifg** cmdlet adds a front-end IP configuration to an Azure load balancer.

## EXAMPLES

### Example 1 Add a front-end IP configuration with a dynamic IP address
```
PS C:\>$Subnet = Get-AzureRmVirtualNetwork -Name "MyVnet" -ResourceGroupName "MyRg" | Get-AzureRmVirtualNetworkSubnetConfig -Name "MySubnet"
PS C:\> Get-AzureRmLoadBalancer -Name "MyLB" -ResourceGroupName "NrpTest" | Add-AzureRmLoadBalancerFrontendIpConfig -Name "FrontendName" -Subnet $Subnet | Set-AzureRmLoadBalancer
```

The first command gets the Azure virtual network named MyVnet and passes the result using the pipeline to the **Get-AzureRmVirtualNetworkSubnetConfig** cmdlet to get the subnet named MySubnet.
The command then stores the result in the variable named $Subnet.
The second command gets the load balancer named MyLB and passes the result to the **Add-AzureRmLoadBalancerFrontendIpConfig** cmdlet that adds a front-end IP configuration to the load balancer with a dynamic private IP address from the subnet stored in the variable named $MySubnet.

### Example 2 Add a front-end IP configuration with a static IP address
```
PS C:\>$Subnet = Get-AzureRmVirtualNetwork -Name "MyVnet" -ResourceGroupName "RG001" | Get-AzureRmVirtualNetworkSubnetConfig -Name "MySubnet"
PS C:\> Get-AzureRmLoadBalancer -Name "MyLB" -ResourceGroupName "NrpTest" | Add-AzureRmLoadBalancerFrontendIpConfig -Name "FrontendName" -Subnet $Subnet -PrivateIpAddress "10.0.1.6" | Set-AzureRmLoadBalancer
```

The first command gets the Azure virtual network named MyVnet and passes the result using the pipeline to the **Get-AzureRmVirtualNetworkSubnetConfig** cmdlet to get the subnet named MySubnet.
The command then stores the result in the variable named $Subnet.
The second command gets the load balancer named MyLB and passes the result to the **Add-AzureRmLoadBalancerFrontendIpConfig** cmdlet that adds a front-end IP configuration to the load balancer with a static private IP address from the subnet stored in the variable named $Subnet.

### Example 3 Add a front-end IP configuration with a public IP address
```
PS C:\>$PublicIp = Get-AzureRmPublicIpAddress -ResourceGroupName "myRG" -Name "MyPub"
PS C:\> Get-AzureRmLoadBalancer -Name "MyLB" -ResourceGroupName "NrpTest" | Add-AzureRmLoadBalancerFrontendIpConfig -Name "FrontendName" -PublicIpAddress $PublicIp | Set-AzureRmLoadBalancer
```

The first command gets the Azure public IP address named MyPub and stores the result in the variable named $PublicIp.
The second command gets the load balancer named MyLB and passes the result to the **Add-AzureRmLoadBalancerFrontendIpConfig** cmdlet that adds a front-end IP configuration to the load balancer with public IP address stored in the variable named $PublicIp.

## PARAMETERS

### -Name
Specifies the name of the front-end IP configuration to add.

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

### -LoadBalancer
Specifies a **LoadBalancer** object.
This cmdlet adds a front-end IP configuration to the load balancer that this parameter specifies.

```yaml
Type: PSLoadBalancer
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -PrivateIpAddress
Specifies the private IP address to associate with a front-end IP configuration.

```yaml
Type: String
Parameter Sets: SetByResourceSubnet, SetByResourceIdSubnet
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Subnet
Specifies the subnet object in which to add a front-end IP configuration.

```yaml
Type: PSSubnet
Parameter Sets: SetByResourceSubnet
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubnetId
Specifies the ID of the subnet in which to add a front-end IP configuration.

```yaml
Type: String
Parameter Sets: SetByResourceIdSubnet
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PublicIpAddressId
Specifes the ID of the public IP address in which to add a front-end IP configuration.

```yaml
Type: String
Parameter Sets: SetByResourceIdPublicIpAddress
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PublicIpAddress
Specifies the public IP address to associate with a front-end IP configuration.

```yaml
Type: PSPublicIpAddress
Parameter Sets: SetByResourcePublicIpAddress
Aliases: 

Required: True
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

[Get-AzureRmLoadBalancerFrontendIpConfig](xref:ResourceManager/AzureRM.Network/v3.0.0/Get-AzureRmLoadBalancerFrontendIpConfig.md)

[Get-AzureRmVirtualNetwork](xref:ResourceManager/AzureRM.Network/v3.0.0/Get-AzureRmVirtualNetwork.md)

[Get-AzureRmVirtualNetworkSubnetConfig](xref:ResourceManager/AzureRM.Network/v3.0.0/Get-AzureRmVirtualNetworkSubnetConfig.md)

[New-AzureRmLoadBalancerFrontendIpConfig](xref:ResourceManager/AzureRM.Network/v3.0.0/New-AzureRmLoadBalancerFrontendIpConfig.md)

[Remove-AzureRmLoadBalancerFrontendIpConfig](xref:ResourceManager/AzureRM.Network/v3.0.0/Remove-AzureRmLoadBalancerFrontendIpConfig.md)

[Set-AzureRmLoadBalancerFrontendIpConfig](xref:ResourceManager/AzureRM.Network/v3.0.0/Set-AzureRmLoadBalancerFrontendIpConfig.md)


