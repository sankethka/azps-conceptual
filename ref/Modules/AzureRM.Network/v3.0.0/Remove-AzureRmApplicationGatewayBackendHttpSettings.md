---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 58CC80A5-58A5-4DCD-AC4B-D6874AF9011B
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Remove-AzureRmApplicationGatewayBackendHttpSettings.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Remove-AzureRmApplicationGatewayBackendHttpSettings.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Remove-AzureRmApplicationGatewayBackendHttpSettings.md
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

# Remove-AzureRmApplicationGatewayBackendHttpSettings

## SYNOPSIS
Removes back-end HTTP settings from an application gateway.

## SYNTAX

```
Remove-AzureRmApplicationGatewayBackendHttpSettings -Name <String> -ApplicationGateway <PSApplicationGateway>
 [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureRmApplicationGatewayBackendHttpSettings** cmdlet removes back-end Hypertext Transfer Protocol (HTTP) settings from an Azure application gateway.

## EXAMPLES

### Example 1: Remove back-end HTTP settings from an application gateway
```
PS C:\>$AppGw = Get-AzureRmApplicationGateway -Name "ApplicationGateway01" -ResourceGroupName "ResourceGroup01"
PS C:\> Remove-AzureRmApplicationGatewayBackendHttpSettings -ApplicationGateway $AppGw -Name "BackEndSetting02"
```

The first command gets an application gateway named ApplicationGateway01 that belongs to the resource group named ResourceGroup01 and stores it in the $AppGw variable.

The second command removes the back-end HTTP setting named BackEndSetting02 from the application gateway stored in $AppGw.

## PARAMETERS

### -Name
Specifies the name of the back-end HTTP settings that this cmdlet removes.

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

### -ApplicationGateway
Specifies the application gateway from which this cmdlet removes back-end HTTP settings.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AzureRmApplicationGatewayBackendHttpSettings](xref:ResourceManager/AzureRM.Network/v3.0.0/Add-AzureRmApplicationGatewayBackendHttpSettings.md)

[New-AzureRmApplicationGatewayBackendHttpSettings](xref:ResourceManager/AzureRM.Network/v3.0.0/New-AzureRmApplicationGatewayBackendHttpSettings.md)

[Get-AzureRmApplicationGatewayBackendHttpSettings](xref:ResourceManager/AzureRM.Network/v3.0.0/Get-AzureRmApplicationGatewayBackendHttpSettings.md)

[Set-AzureRmApplicationGatewayBackendHttpSettings](xref:ResourceManager/AzureRM.Network/v3.0.0/Set-AzureRmApplicationGatewayBackendHttpSettings.md)


