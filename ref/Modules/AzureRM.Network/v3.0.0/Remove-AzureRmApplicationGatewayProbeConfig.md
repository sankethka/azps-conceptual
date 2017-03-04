---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 348C17A1-B50D-4F86-B994-F14FDA009C41
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Remove-AzureRmApplicationGatewayProbeConfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Remove-AzureRmApplicationGatewayProbeConfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Remove-AzureRmApplicationGatewayProbeConfig.md
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

# Remove-AzureRmApplicationGatewayProbeConfig

## SYNOPSIS
Removes a health probe from an existing application gateway.

## SYNTAX

```
Remove-AzureRmApplicationGatewayProbeConfig -Name <String> -ApplicationGateway <PSApplicationGateway>
 [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureRmApplicationGatewayProbeConfig** cmdlet removes a heath probe from an existing application gateway.

## EXAMPLES

### Example 1: Remove a health probe from an existing application gateway
```
PS C:\>$Gateway = Remove-AzureRmApplicationGatewayProbeConfig -ApplicationGateway Gateway -Name "Probe04"
```

This command removes the health probe named Probe04 from the application gateway named Gateway.

## PARAMETERS

### -Name
Specifies the name of the probe for which this cmdlet removes.

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
Specifies the application gateway to which this cmdlet removes a probe.

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

## OUTPUTS

## NOTES

## RELATED LINKS

[Remove a probe from an existing application gateway](https://azure.microsoft.com/en-us/documentation/articles/application-gateway-create-probe-ps/#remove-a-probe-from-an-existing-application-gateway)

[Add-AzureRmApplicationGatewayProbeConfig](xref:ResourceManager/AzureRM.Network/v3.0.0/Add-AzureRmApplicationGatewayProbeConfig.md)

[Get-AzureRmApplicationGatewayProbeConfig](xref:ResourceManager/AzureRM.Network/v3.0.0/Get-AzureRmApplicationGatewayProbeConfig.md)

[New-AzureRmApplicationGatewayProbeConfig](xref:ResourceManager/AzureRM.Network/v3.0.0/New-AzureRmApplicationGatewayProbeConfig.md)

[Set-AzureRmApplicationGatewayProbeConfig](xref:ResourceManager/AzureRM.Network/v3.0.0/Set-AzureRmApplicationGatewayProbeConfig.md)


