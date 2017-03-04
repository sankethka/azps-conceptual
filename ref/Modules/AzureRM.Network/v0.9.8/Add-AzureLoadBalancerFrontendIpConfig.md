---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: C8A37C5D-EA16-499E-83E4-B9C673F52880
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Add-AzureLoadBalancerFrontendIpConfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Add-AzureLoadBalancerFrontendIpConfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Add-AzureLoadBalancerFrontendIpConfig.md
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

# Add-AzureLoadBalancerFrontendIpConfig

## SYNOPSIS
Adds a front-end IP configuration to a load balancer.

## SYNTAX

### SetByResourceId
```
Add-AzureLoadBalancerFrontendIpConfig -Name <String> -LoadBalancer <PSLoadBalancer>
 [-PrivateIpAddress <String>] [-SubnetId <String>] [-PublicIpAddressId <String>] [-Profile <AzureProfile>]
 [<CommonParameters>]
```

### SetByResource
```
Add-AzureLoadBalancerFrontendIpConfig -Name <String> -LoadBalancer <PSLoadBalancer>
 [-PrivateIpAddress <String>] [-Subnet <PSSubnet>] [-PublicIpAddress <PSPublicIpAddress>]
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Add-AzureLoadBalancerFrontendIpConifg** cmdlet adds a front-end IP configuration to an Azure load balancer.

## EXAMPLES

### Example 1 Add a front-end IP configuration with a dynamic IP address
```
PS C:\>$Subnet = Get-AzureVirtualNetwork -Name "myVnet" -ResourceGroupName "myRg" | Get-AzureVirtualNetworkSubnetConfig -Name "mysubnet"
PS C:\> Get-AzureLoadBalancer -Name "myLB" -ResourceGroupName "NrpTest" | Add-AzureLoadBalancerFrontendIpConfig -Name "frontendName" -Subnet $Subnet | Set-AzureLoadBalancer
```

This command adds a front-end IP configuration to the load balancer with a dynamic private IP address from the specified subnet.

### Example 2 Add a front-end IP configuration with a static IP address
```
PS C:\>$Subnet = Get-AzureVirtualNetwork -Name "myVnet" -ResourceGroupName "myRg" | Get-AzureVirtualNetworkSubnetConfig -Name "mysubnet"
PS C:\> Get-AzureLoadBalancer -Name "myLB" -ResourceGroupName "NrpTest" | Add-AzureLoadBalancerFrontendIpConfig -Name "frontendName" -Subnet $Subnet -PrivateIpAddress "10.0.1.6" | Set-AzureLoadBalancer
```

This command adds a front-end IP configuration to the load balancer with a static private IP address from the specified subnet.

### Example 3 Add a front-end IP configuration with a public IP address
```
PS C:\>$PublicIp = Get-AzurePublicIpAddress -ResourceGroupName "myRG" -Name "myPub"
PS C:\> Get-AzureLoadBalancer -Name "myLB" -ResourceGroupName "NrpTest" | Add-AzureLoadBalancerFrontendIpConfig -Name "frontendName" -PublicIpAddress $PublicIp | Set-AzureLoadBalancer
```

This command adds a front-end IP configuration to the load balancer with a public IP address.

## PARAMETERS

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

### -PrivateIpAddress
Specifies the **PublicIpAddress** object to associate with a front-end IP configuration.

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

### -Profile
Specifies an Azure profile.

```yaml
Type: AzureProfile
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PublicIpAddress
Specifies the **PublicIpAddress** object to associate with a front-end IP configuration.

```yaml
Type: PSPublicIpAddress
Parameter Sets: SetByResource
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PublicIpAddressId
Specifies the ID of the **PublicIpAddress** object to associate with a front-end IP configuration.

```yaml
Type: String
Parameter Sets: SetByResourceId
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Subnet
Specifies the **Subnet** object in which to add a front-end IP configuration.

```yaml
Type: PSSubnet
Parameter Sets: SetByResource
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubnetId
Specifies the ID of the subnet in which to add a front-end IP configuration.

```yaml
Type: String
Parameter Sets: SetByResourceId
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

[Get-AzureLoadBalancerFrontendIpConfig](xref:ResourceManager/AzureRM.Network/v0.9.8/Get-AzureLoadBalancerFrontendIpConfig.md)

[Get-AzureVirtualNetwork](xref:ResourceManager/AzureRM.Network/v0.9.8/Get-AzureVirtualNetwork.md)

[Get-AzureVirtualNetworkSubnetConfig](xref:ResourceManager/AzureRM.Network/v0.9.8/Get-AzureVirtualNetworkSubnetConfig.md)

[New-AzureLoadBalancerFrontendIpConfig](xref:ResourceManager/AzureRM.Network/v0.9.8/New-AzureLoadBalancerFrontendIpConfig.md)

[Remove-AzureLoadBalancerFrontendIpConfig](xref:ResourceManager/AzureRM.Network/v0.9.8/Remove-AzureLoadBalancerFrontendIpConfig.md)

[Set-AzureLoadBalancerFrontendIpConfig](xref:ResourceManager/AzureRM.Network/v0.9.8/Set-AzureLoadBalancerFrontendIpConfig.md)


