---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: EA0DE1D0-BAD0-4839-8947-05C35AACC60E
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Remove-AzureApplicationGatewayRequestRoutingRule.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Remove-AzureApplicationGatewayRequestRoutingRule.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Remove-AzureApplicationGatewayRequestRoutingRule.md
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

# Remove-AzureApplicationGatewayRequestRoutingRule

## SYNOPSIS
Removes a request routing rule from an application gateway.

## SYNTAX

```
Remove-AzureApplicationGatewayRequestRoutingRule -Name <String> -ApplicationGateway <PSApplicationGateway>
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureApplicationGatewayRequestRoutingRule** cmdlet removes a request routing rule from an Azure application gateway.

## EXAMPLES

### Example 1: Remove a request routing rule from an application gateway
```
PS C:\>$AppGw = Get-AzureApplicationGateway -Name "ApplicationGateway01" -ResourceGroupName "ResourceGroup01"
PS C:\> Remove-AzureApplicationGatewayRequestRoutingRule -ApplicationGateway $AppGw -Name "Rule02"
```

The first command gets an application gateway and stores it in the $AppGw variable.

The second command removes the request routing rule named Rule02 from the application gateway stored in $AppGw.

## PARAMETERS

### -ApplicationGateway
Specifies the application gateway from which to remove a request routing rule.

```yaml
Type: PSApplicationGateway
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Name
Specifies the name of the request routing rule to remove.

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
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

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

### System.String

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AzureApplicationGatewayRequestRoutingRule](xref:ResourceManager/AzureRM.Network/v0.9.8/Add-AzureApplicationGatewayRequestRoutingRule.md)

[Get-AzureApplicationGatewayRequestRoutingRule](xref:ResourceManager/AzureRM.Network/v0.9.8/Get-AzureApplicationGatewayRequestRoutingRule.md)

[New-AzureApplicationGatewayRequestRoutingRule](xref:ResourceManager/AzureRM.Network/v0.9.8/New-AzureApplicationGatewayRequestRoutingRule.md)

[Set-AzureApplicationGatewayRequestRoutingRule](xref:ResourceManager/AzureRM.Network/v0.9.8/Set-AzureApplicationGatewayRequestRoutingRule.md)


