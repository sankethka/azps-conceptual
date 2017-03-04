---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 1BDADE63-4F63-4A4A-A03B-76D746C31018
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Add-AzureLoadBalancerBackendAddressPoolConfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Add-AzureLoadBalancerBackendAddressPoolConfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Add-AzureLoadBalancerBackendAddressPoolConfig.md
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

# Add-AzureLoadBalancerBackendAddressPoolConfig

## SYNOPSIS
Adds a backend address pool configuration to a load balancer.

## SYNTAX

```
Add-AzureLoadBalancerBackendAddressPoolConfig -Name <String> -LoadBalancer <PSLoadBalancer>
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Add-AzureLoadBalancerBackend** cmdlet adds a backend address pool to an Azure load balancer.

## EXAMPLES

### Example 1 Add a backend address pool configuration to a load balancer
```
PS C:\>Get-AzureLoadBalancer -Name "MyLoadBalancer" -ResourceGroupName "myrg" | Add-AzureLoadBalancerBackendAddressPoolConfig -Name "BackendAddressPool02" | Set-AzureLoadBalancer
```

This command gets the load balancer named MyLoadBalancer, adds the backend address pool named BackendAddressPool02 to MyLoadBalancer, and then uses the **Set-AzureLoadBalancer** cmdlet to update MyLoadBalancer.

## PARAMETERS

### -LoadBalancer
Specifies a **LoadBalancer** object.

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
Specifies the name of the backend address pool configuration to add.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureLoadBalancer](xref:ResourceManager/AzureRM.Network/v0.9.8/Get-AzureLoadBalancer.md)

[Get-AzureNetworkInterface](xref:ResourceManager/AzureRM.Network/v0.9.8/Get-AzureNetworkInterface.md)

[Get-AzureLoadBalancerBackendAddressPoolConfig](xref:ResourceManager/AzureRM.Network/v0.9.8/Get-AzureLoadBalancerBackendAddressPoolConfig.md)

[New-AzureLoadBalancerBackendAddressPoolConfig](xref:ResourceManager/AzureRM.Network/v0.9.8/New-AzureLoadBalancerBackendAddressPoolConfig.md)

[Remove-AzureLoadBalancerBackendAddressPoolConfig](xref:ResourceManager/AzureRM.Network/v0.9.8/Remove-AzureLoadBalancerBackendAddressPoolConfig.md)


