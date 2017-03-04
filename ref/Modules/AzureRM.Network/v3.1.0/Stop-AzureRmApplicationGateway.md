---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
ms.assetid: 2C9609E8-0D8B-471B-9F0E-672BF55C3A0E
online version: 
schema: 2.0.0
updated_at: 1/11/2017 5:03 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.1.0/Stop-AzureRmApplicationGateway.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.1.0/Stop-AzureRmApplicationGateway.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/250906d968edb12911f0c987961d4bfa82e26116/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.1.0/Stop-AzureRmApplicationGateway.md
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
Stops an application gateway.

## SYNTAX

```
Stop-AzureRmApplicationGateway -ApplicationGateway <PSApplicationGateway>
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Stop-AzureRmApplicationGateway** cmdlet stops an application gateway.

## EXAMPLES

### Example 1: Stop an application gateway
```
PS C:\> Stop-AzureRmApplicationGateway -ApplicationGateway $AppGw
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

### System.String

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureRmApplicationGateway](xref:ResourceManager/AzureRM.Network/v3.1.0/Get-AzureRmApplicationGateway.md)

[New-AzureRmApplicationGateway](xref:ResourceManager/AzureRM.Network/v3.1.0/New-AzureRmApplicationGateway.md)

[Remove-AzureRmApplicationGateway](xref:ResourceManager/AzureRM.Network/v3.1.0/Remove-AzureRmApplicationGateway.md)

[Set-AzureRmApplicationGateway](xref:ResourceManager/AzureRM.Network/v3.1.0/Set-AzureRmApplicationGateway.md)

[Start-AzureRmApplicationGateway](xref:ResourceManager/AzureRM.Network/v3.1.0/Start-AzureRmApplicationGateway.md)
