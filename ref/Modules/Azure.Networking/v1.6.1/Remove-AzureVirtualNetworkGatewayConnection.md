---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: EC304631-D4F6-49B8-A3FB-01AF5C25DAB7
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v1.6.1/Remove-AzureVirtualNetworkGatewayConnection.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v1.6.1/Remove-AzureVirtualNetworkGatewayConnection.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v1.6.1/Remove-AzureVirtualNetworkGatewayConnection.md
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

# Remove-AzureVirtualNetworkGatewayConnection

## SYNOPSIS
Removes a virtual network gateway connection.

## SYNTAX

```
Remove-AzureVirtualNetworkGatewayConnection [-GatewayId] <String> [-ConnectedEntityId] <String>
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureVirtualNetworkGatewayConnection** cmdlet removes a virtual network gateway connection.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -ConnectedEntityId
Specifies the ID of a connected entity.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
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
Position: 0
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

[Get-AzureVirtualNetworkGatewayConnection](xref:ServiceManagement/Azure.Networking/v1.6.1/Get-AzureVirtualNetworkGatewayConnection.md)

[New-AzureVirtualNetworkGatewayConnection](xref:ServiceManagement/Azure.Networking/v1.6.1/New-AzureVirtualNetworkGatewayConnection.md)

[Reset-AzureVirtualNetworkGatewayConnection](xref:ServiceManagement/Azure.Networking/v1.6.1/Reset-AzureVirtualNetworkGatewayConnection.md)


