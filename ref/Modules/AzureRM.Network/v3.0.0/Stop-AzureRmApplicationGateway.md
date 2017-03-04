---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: C90D1663-7CB2-4243-A5CC-74A8FEA754D4
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Stop-AzureRmApplicationGateway.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Stop-AzureRmApplicationGateway.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Stop-AzureRmApplicationGateway.md
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

# Stop-AzureRmApplicationGateway

## SYNOPSIS
Stops an application gateway

## SYNTAX

```
Stop-AzureRmApplicationGateway -ApplicationGateway <PSApplicationGateway> [<CommonParameters>]
```

## DESCRIPTION
The **Stop-AzureRmApplicationGateway** cmdlet stops an application gateway.

## EXAMPLES

### Example 1: Stop an application gateway
```
PS C:\>Stop-AzureRmApplicationGateway -ApplicationGateway $AppGw
```

This command stops the application gateway stored in the $AppGw variable.

## PARAMETERS

### -ApplicationGateway
Specifies the application gateway that this cmdlet stops.

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

[Get-AzureRmApplicationGateway](xref:ResourceManager/AzureRM.Network/v3.0.0/Get-AzureRmApplicationGateway.md)

[New-AzureRmApplicationGateway](xref:ResourceManager/AzureRM.Network/v3.0.0/New-AzureRmApplicationGateway.md)

[Remove-AzureRmApplicationGateway](xref:ResourceManager/AzureRM.Network/v3.0.0/Remove-AzureRmApplicationGateway.md)

[Set-AzureRmApplicationGateway](xref:ResourceManager/AzureRM.Network/v3.0.0/Set-AzureRmApplicationGateway.md)

[Start-AzureRmApplicationGateway](xref:ResourceManager/AzureRM.Network/v3.0.0/Start-AzureRmApplicationGateway.md)


