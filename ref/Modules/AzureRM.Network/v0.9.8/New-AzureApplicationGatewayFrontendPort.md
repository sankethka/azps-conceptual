---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 94CA03D1-8155-438C-92DE-4C7CAFDF10C2
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/New-AzureApplicationGatewayFrontendPort.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/New-AzureApplicationGatewayFrontendPort.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/New-AzureApplicationGatewayFrontendPort.md
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

# New-AzureApplicationGatewayFrontendPort

## SYNOPSIS
Creates a front-end port for an application gateway.

## SYNTAX

```
New-AzureApplicationGatewayFrontendPort -Name <String> -Port <Int32> [-Profile <AzureProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureApplicationGatewayFrontendPort** cmdlet creates a front-end port for an Azure application gateway.

## EXAMPLES

### Example1: Create a front-end port
```
PS C:\> $FrontEndPort = New-AzureApplicationGatewayFrontendPort -Name "FrontEndPort01" -Port 80
```

This command creates a front-end port on port 80 named FrontEndPort01.

## PARAMETERS

### -Name
Specifies the name of the front-end port that this cmdlet creates.

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
Specifies the port number of the front-end port.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSApplicationGatewayFrontendPort

## NOTES

## RELATED LINKS

[Add-AzureApplicationGatewayFrontendPort](xref:ResourceManager/AzureRM.Network/v0.9.8/Add-AzureApplicationGatewayFrontendPort.md)

[Get-AzureApplicationGatewayFrontendPort](xref:ResourceManager/AzureRM.Network/v0.9.8/Get-AzureApplicationGatewayFrontendPort.md)

[Remove-AzureApplicationGatewayFrontendPort](xref:ResourceManager/AzureRM.Network/v0.9.8/Remove-AzureApplicationGatewayFrontendPort.md)

[Set-AzureApplicationGatewayFrontendPort](xref:ResourceManager/AzureRM.Network/v0.9.8/Set-AzureApplicationGatewayFrontendPort.md)


