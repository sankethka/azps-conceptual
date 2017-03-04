---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.Network.dll-Help.xml
ms.assetid: 5F016D72-80EB-462D-9646-25EC4E33293E
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v3.4.0/Get-AzureVirtualNetworkGatewayKey.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v3.4.0/Get-AzureVirtualNetworkGatewayKey.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v3.4.0/Get-AzureVirtualNetworkGatewayKey.md
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

# Get-AzureVirtualNetworkGatewayKey

## SYNOPSIS
Gets the key for an Azure virtual network gateway.

## SYNTAX

```
Get-AzureVirtualNetworkGatewayKey -GatewayId <String> -ConnectedEntityId <String> [-Profile <AzureSMProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureVirtualNetworkGatewayKey** cmdlet gets the key for an Azure virtual network gateway.

## EXAMPLES

## PARAMETERS

### -ConnectedEntityId
Specifies the ID of a connected entity.

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

### -GatewayId
Specifies the ID of a gateway.

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
Type: AzureSMProfile
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

## OUTPUTS

## NOTES

## RELATED LINKS

[Reset-AzureVirtualNetworkGatewayKey](xref:ServiceManagement/Azure.Networking/v3.4.0/Reset-AzureVirtualNetworkGatewayKey.md)

[Set-AzureVirtualNetworkGatewayKey](xref:ServiceManagement/Azure.Networking/v3.4.0/Set-AzureVirtualNetworkGatewayKey.md)


