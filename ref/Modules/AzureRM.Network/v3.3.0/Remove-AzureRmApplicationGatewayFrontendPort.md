---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
ms.assetid: A698954A-994E-45AD-BA36-1E03196CFCB0
online version: 
schema: 2.0.0
updated_at: 1/27/2017 6:06 PM
ms.date: 1/27/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.3.0/Remove-AzureRmApplicationGatewayFrontendPort.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.3.0/Remove-AzureRmApplicationGatewayFrontendPort.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/23ce9feab30627349c6bab53ab057520085412e0/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.3.0/Remove-AzureRmApplicationGatewayFrontendPort.md
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

# Remove-AzureRmApplicationGatewayFrontendPort

## SYNOPSIS
Removes a front-end port from an application gateway.

## SYNTAX

```
Remove-AzureRmApplicationGatewayFrontendPort -Name <String> -ApplicationGateway <PSApplicationGateway>
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureRmApplicationGatewayFrontendPort** cmdlet removes a front-end port from an Azure application gateway.

## EXAMPLES

### Example: Remove a front-end port from an application gateway
```
PS C:\> $AppGw = Get-AzureRmApplicationGateway -Name "ApplicationGateway01" -ResourceGroupName "ResourceGroup01"
PS C:\> Remove-AzureRmApplicationGatewayFrontendPort -ApplicationGateway $AppGw -Name "FrontEndPort02"
```

The first command gets an application gateway named ApplicationGateway01 that belongs to the resource group named ResourceGroup01 and stores the gateway in $AppGw variable.

The second command removes the port named FrontEndPort02 from the application gateway.

## PARAMETERS

### -ApplicationGateway
Specifies the application gateway from which to remove a front-end port.

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

### -Name
Specifies name of the frontend port to remove.

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

## NOTES

## RELATED LINKS

[Add-AzureRmApplicationGatewayFrontendPort](xref:ResourceManager/AzureRM.Network/v3.3.0/Add-AzureRmApplicationGatewayFrontendPort.md)

[Get-AzureRmApplicationGatewayFrontendPort](xref:ResourceManager/AzureRM.Network/v3.3.0/Get-AzureRmApplicationGatewayFrontendPort.md)

[New-AzureRmApplicationGatewayFrontendPort](xref:ResourceManager/AzureRM.Network/v3.3.0/New-AzureRmApplicationGatewayFrontendPort.md)

[Set-AzureRmApplicationGatewayFrontendPort](xref:ResourceManager/AzureRM.Network/v3.3.0/Set-AzureRmApplicationGatewayFrontendPort.md)


