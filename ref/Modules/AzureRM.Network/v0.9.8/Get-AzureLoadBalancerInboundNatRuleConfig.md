---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: EEAA0850-A845-4C56-9759-95CD327324C9
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Get-AzureLoadBalancerInboundNatRuleConfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Get-AzureLoadBalancerInboundNatRuleConfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Get-AzureLoadBalancerInboundNatRuleConfig.md
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

# Get-AzureLoadBalancerInboundNatRuleConfig

## SYNOPSIS
Gets an inbound NAT rule configuration for a load balancer.

## SYNTAX

```
Get-AzureLoadBalancerInboundNatRuleConfig [-Name <String>] -LoadBalancer <PSLoadBalancer>
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureLoadBalancerInboundNatRuleConfig** cmdlet gets one or more inbound network address translation (NAT) rules in an Azure load balancer.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -LoadBalancer
Specifies the load balancer that is associated with the inbound NAT rule configuration to get.

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
Specifies the name of the inbound NAT rule configuration to get.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AzureLoadBalancerInboundNatRuleConfig](xref:ResourceManager/AzureRM.Network/v0.9.8/Add-AzureLoadBalancerInboundNatRuleConfig.md)

[New-AzureLoadBalancerInboundNatRuleConfig](xref:ResourceManager/AzureRM.Network/v0.9.8/New-AzureLoadBalancerInboundNatRuleConfig.md)

[Remove-AzureLoadBalancerInboundNatRuleConfig](xref:ResourceManager/AzureRM.Network/v0.9.8/Remove-AzureLoadBalancerInboundNatRuleConfig.md)

[Set-AzureLoadBalancerInboundNatRuleConfig](xref:ResourceManager/AzureRM.Network/v0.9.8/Set-AzureLoadBalancerInboundNatRuleConfig.md)


