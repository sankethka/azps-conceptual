---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
ms.assetid: 2A3B7343-9AA0-4505-AEDE-31C0C5B98694
online version: 
schema: 2.0.0
updated_at: 2/2/2017 1:40 AM
ms.date: 2/2/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.3.0/Set-AzureRmExpressRouteCircuit.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.3.0/Set-AzureRmExpressRouteCircuit.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/1ff6de49e111b7febd4cfa6ea44fe6beb0abd5f2/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.3.0/Set-AzureRmExpressRouteCircuit.md
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

# Set-AzureRmExpressRouteCircuit

## SYNOPSIS
Modifies an ExpressRoute circuit.

## SYNTAX

```
Set-AzureRmExpressRouteCircuit -ExpressRouteCircuit <PSExpressRouteCircuit>
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmExpressRouteCircuit** cmdlet modifies an ExpressRoute circuit.

## EXAMPLES

## PARAMETERS

### -ExpressRouteCircuit
Specifies the **ExpressRouteCircuit** object that this cmdlet modifies.

```yaml
Type: PSExpressRouteCircuit
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

[Get-AzureRmExpressRouteCircuit](xref:ResourceManager/AzureRM.Network/v3.3.0/Get-AzureRmExpressRouteCircuit.md)

[Move-AzureRmExpressRouteCircuit](xref:ResourceManager/AzureRM.Network/v3.3.0/Move-AzureRmExpressRouteCircuit.md)

[New-AzureRmExpressRouteCircuit](xref:ResourceManager/AzureRM.Network/v3.3.0/New-AzureRmExpressRouteCircuit.md)

[Remove-AzureRmExpressRouteCircuit](xref:ResourceManager/AzureRM.Network/v3.3.0/Remove-AzureRmExpressRouteCircuit.md)
