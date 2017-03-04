---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 460556D8-C41E-434F-9A58-03A3318C35A9
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Add-AzureApplicationGatewayBackendHttpSettings.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Add-AzureApplicationGatewayBackendHttpSettings.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Add-AzureApplicationGatewayBackendHttpSettings.md
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

# Add-AzureApplicationGatewayBackendHttpSettings

## SYNOPSIS

## SYNTAX

```
Add-AzureApplicationGatewayBackendHttpSettings -ApplicationGateway <PSApplicationGateway> -Name <String>
 -Port <Int32> -Protocol <String> -CookieBasedAffinity <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
Adds back-end HTTP settings to an application gateway.

## EXAMPLES

### Example 1: Adding back-end HTTP settings to an application gateway
```
PS C:\> $AppGw = Get-AzureApplicationGateway -Name "ApplicationGateway01" -ResourceGroupName "ResourceGroup01"
PS C:\> $appgw = Add-AzureApplicationGatewayBackendHttpSettings -ApplicationGateway $appgw 
-Name "Setting02" -Port 88 -Protocol "HTTP" -CookieBasedAffinity "Disabled"
```

The first command gets the application gateway named ApplicationGateway01 that belongs to the resource group named ResourceGroup01 and stores it in the $AppGw variable.

The second command adds back-end HTTP settings to the application gateway, setting the port to 88 and the protocol to HTTP and names the settings Setting02.

## PARAMETERS

### -ApplicationGateway
The **Add-AzureApplicationGatewayBackendHttpSettings** cmdlet adds back-end HTTP settings to an application gateway.

Back-end HTTP settings are applied to all back-end servers in the pool.

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

### -CookieBasedAffinity
Specifies whether cookie-based affinity should be enabled or disabled for the backend server pool.
The acceptable values for this parameter are: Disabled, Enabled.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 
Accepted values: Enabled, Disabled

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies the name of the back-end HTTP settings which this cmdlet adds.

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

### -Port
Specifies the port of the back-end server pool.

```yaml
Type: Int32
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

### -Protocol
Specifies the protocol for communication between application gateway and back-end servers.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSApplicationGateway

## NOTES

## RELATED LINKS

[Get-AzureApplicationGatewayBackendHttpSettings](xref:ResourceManager/AzureRM.Network/v0.9.8/Get-AzureApplicationGatewayBackendHttpSettings.md)

[New-AzureApplicationGatewayBackendHttpSettings](xref:ResourceManager/AzureRM.Network/v0.9.8/New-AzureApplicationGatewayBackendHttpSettings.md)

[Remove-AzureApplicationGatewayBackendHttpSettings](xref:ResourceManager/AzureRM.Network/v0.9.8/Remove-AzureApplicationGatewayBackendHttpSettings.md)

[Set-AzureApplicationGatewayBackendHttpSettings](xref:ResourceManager/AzureRM.Network/v0.9.8/Set-AzureApplicationGatewayBackendHttpSettings.md)


