---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
ms.assetid: 494E185D-3746-4959-846E-660017A1F392
online version: 
schema: 2.0.0
updated_at: 1/11/2017 4:58 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.1.0/Set-AzureRmLoadBalancer.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.1.0/Set-AzureRmLoadBalancer.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/019d55e5427f1b23a116603492cb2a1977604795/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.1.0/Set-AzureRmLoadBalancer.md
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

# Set-AzureRmLoadBalancer

## SYNOPSIS
Sets the goal state for a load balancer.

## SYNTAX

```
Set-AzureRmLoadBalancer -LoadBalancer <PSLoadBalancer> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmLoadBalancer** cmdlet sets the goal state for an Azure load balancer.

## EXAMPLES

### Example 1: Modify a load balancer
```
PS C:\> $slb = Get-AzureRmLoadBalancer -Name "NRPLB" -ResourceGroupName "NRP-RG"
PS C:\> $slb | Add-AzureRmLoadBalancerInboundNatRuleConfig -Name "NewRule" -FrontendIpConfiguration $slb.FrontendIpConfigurations[0] -FrontendPort 81 -BackendPort 8181 -Protocol "TCP"
PS C:\> $slb | Set-AzureRmLoadBalancer
```

The first command gets the load balancer named NRPLB, and then stores it in the $slb variable.

The second command uses the pipeline operator to pass the load balancer in $slb to [Add-AzureRmLoadBalancerInboundNatRuleConfig](./Add-AzureRmLoadBalancerInboundNatRuleConfig.md), which adds an inbound NAT rule named NewRule.

The third command passes the load balancer to **Set-AzureRmLoadBalancer**, which updates the load balancer configuration and saves it.

## PARAMETERS

### -LoadBalancer
Specifies a load balancer.
This cmdlet sets the goal state for the load balancer that this parameter specifies.

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

[Get-AzureRmLoadBalancer](xref:ResourceManager/AzureRM.Network/v3.1.0/Get-AzureRmLoadBalancer.md)

[New-AzureRmLoadBalancer](xref:ResourceManager/AzureRM.Network/v3.1.0/New-AzureRmLoadBalancer.md)

[Remove-AzureRmLoadBalancer](xref:ResourceManager/AzureRM.Network/v3.1.0/Remove-AzureRmLoadBalancer.md)
