---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
ms.assetid: F965A9DE-645C-471B-84E8-58D648B1CA57
online version: 
schema: 2.0.0
updated_at: 1/11/2017 4:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.1.0/Remove-AzureRmLoadBalancerBackendAddressPoolConfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.1.0/Remove-AzureRmLoadBalancerBackendAddressPoolConfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/d25b2832812152582a1c440155e6033f127b60be/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.1.0/Remove-AzureRmLoadBalancerBackendAddressPoolConfig.md
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

# Remove-AzureRmLoadBalancerBackendAddressPoolConfig

## SYNOPSIS
Removes a backend address pool configuration from a load balancer.

## SYNTAX

```
Remove-AzureRmLoadBalancerBackendAddressPoolConfig [-Name <String>] -LoadBalancer <PSLoadBalancer>
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureRmLoadBalancerBackendAddressPoolConfig** cmdlet removes a backend address pool from a load balancer.

## EXAMPLES

### Example 1: Remove a backend address pool configuration from a load balancer
```
PS C:\> Get-AzureRmLoadBalancer -Name "MyLoadBalancer" -ResourceGroupName "MyResourceGroup" | Remove-AzureRmLoadBalancerBackendAddressPoolConfig -Name "BackendAddressPool02" | Set-AzureRmLoadBalancer
```

This command gets the load balancer named MyLoadBalancer and passes it to **Remove-AzureRmLoadBalancerBackendAddressPoolConfig**, which removes the BackendAddressPool02 configuration from MyLoadBalancer.
Finally, the [Set-AzureRmLoadBalancer](./Set-AzureRmLoadBalancer.md) cmdlet updates MyLoadBalancer.
Note that a backend address pool configuration must exist before you can delete it.

## PARAMETERS

### -Name
Specifies the name of the backend address pool that this cmdlet removes.

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

### -LoadBalancer
Specifies the load balancer that contains the backend address pool to remove.

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

[Add-AzureRmLoadBalancerBackendAddressPoolConfig](xref:ResourceManager/AzureRM.Network/v3.1.0/Add-AzureRmLoadBalancerBackendAddressPoolConfig.md)

[Get-AzureRmLoadBalancer](xref:ResourceManager/AzureRM.Network/v3.1.0/Get-AzureRmLoadBalancer.md)

[Get-AzureRmLoadBalancerBackendAddressPoolConfig](xref:ResourceManager/AzureRM.Network/v3.1.0/Get-AzureRmLoadBalancerBackendAddressPoolConfig.md)

[New-AzureRmLoadBalancerBackendAddressPoolConfig](xref:ResourceManager/AzureRM.Network/v3.1.0/New-AzureRmLoadBalancerBackendAddressPoolConfig.md)
