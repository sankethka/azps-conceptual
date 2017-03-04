---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: D57609B6-1464-4122-B8DC-32ED737CFDC5
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Get-AzureApplicationGatewayBackendHttpSettings.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Get-AzureApplicationGatewayBackendHttpSettings.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Get-AzureApplicationGatewayBackendHttpSettings.md
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

# Get-AzureApplicationGatewayBackendHttpSettings

## SYNOPSIS
Gets the back-end HTTP settings of an application gateway.

## SYNTAX

```
Get-AzureApplicationGatewayBackendHttpSettings [-Name <String>] -ApplicationGateway <PSApplicationGateway>
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureApplicationGatewayBackendHttpSettings** cmdlet gets the back-end HTTP settings of an application gateway.

## EXAMPLES

### Example 1: Get back-end HTTP settings by name
```
PS C:\> $AppGw = Get-AzureApplicationGateway -Name "ApplicationGateway01" -ResourceGroupName "ResourceGroup01"
PS C:\> $Settings  = Get-AzureApplicationGatewayBackendHttpSettings -Name "Settings01" -ApplicationGateway $AppGw
```

The first command gets the application gateway named ApplicationGateway01 in the resource group named ResourceGroup01, and stores it in the $AppGw variable.

The second command gets the HTTP settings named Settings01 for $AppGw and stores the settings in the $Settings variable.

### Example 2: Get a collection of back-end HTTP settings
```
PS C:\> $AppGw = Get-AzureApplicationGateway -Name "ApplicationGateway01" -ResourceGroupName "ResourceGroup01"
PS C:\> $SettingsList  = Get-AzureApplicationGatewayBackendHttpSettings -ApplicationGateway $AppGw
```

The first command gets the application gateway named ApplicationGateway01 in the resource group named ResourceGroup01, and stores it in the $AppGw variable.

The second command gets the collection of HTTP settings for $AppGw and stores the settings in the $SettingsList variable.

## PARAMETERS

### -ApplicationGateway
Specifies an application gateway object that contains back-end HTTP settings.

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
Specifies the name of the backend HTTP settings that this cmdlet gets.

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

### Microsoft.Azure.Commands.Network.Models.AzureApplicationGatewayBackendHttpSettings

### IEnumerable<Microsoft.Azure.Commands.Network.Models.AzureApplicationGatewayBackendHttpSettings>

## NOTES

## RELATED LINKS

[Add-AzureApplicationGatewayBackendHttpSettings](xref:ResourceManager/AzureRM.Network/v0.9.8/Add-AzureApplicationGatewayBackendHttpSettings.md)

[New-AzureApplicationGatewayBackendHttpSettings](xref:ResourceManager/AzureRM.Network/v0.9.8/New-AzureApplicationGatewayBackendHttpSettings.md)

[Remove-AzureApplicationGatewayBackendHttpSettings](xref:ResourceManager/AzureRM.Network/v0.9.8/Remove-AzureApplicationGatewayBackendHttpSettings.md)

[Set-AzureApplicationGatewayBackendHttpSettings](xref:ResourceManager/AzureRM.Network/v0.9.8/Set-AzureApplicationGatewayBackendHttpSettings.md)


