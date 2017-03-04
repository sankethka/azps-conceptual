---
external help file: Microsoft.Azure.Commands.Cdn.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 0DE23BF3-73D5-49B5-A448-5CFD4A186263
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Cdn/v2.2.0/Get-AzureRmCdnEndpoint.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Cdn/v2.2.0/Get-AzureRmCdnEndpoint.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Cdn/v2.2.0/Get-AzureRmCdnEndpoint.md
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

# Get-AzureRmCdnEndpoint

## SYNOPSIS
Gets a CDN endpoint.

## SYNTAX

### Parameter Set for fields parameters (Default)
```
Get-AzureRmCdnEndpoint [-EndpointName <String>] -ProfileName <String> -ResourceGroupName <String>
 [<CommonParameters>]
```

### Parameter Set for object parameters
```
Get-AzureRmCdnEndpoint [-EndpointName <String>] -CdnProfile <PSProfile> [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRMCdnEndpoint** cmdlet gets an Azure Content Delivery Network (CDN) endpoint and its associated configuration data.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -EndpointName
Specifies the name of the endpoint.
The name of the endpoint is not the host name of the endpoint.

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

### -ProfileName
Specifies the name of the profile to which the endpoint belongs.

```yaml
Type: String
Parameter Sets: Parameter Set for fields parameters
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group to which the endpoint belongs.

```yaml
Type: String
Parameter Sets: Parameter Set for fields parameters
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CdnProfile
Specifies the CDN profile object to which the endpoint belongs.

```yaml
Type: PSProfile
Parameter Sets: Parameter Set for object parameters
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

###  
This cmdlet returns an endpoint object.

## NOTES

## RELATED LINKS

[New-AzureRmCdnEndpoint](xref:ResourceManager/AzureRM.Cdn/v2.2.0/New-AzureRmCdnEndpoint.md)

[Remove-AzureRmCdnEndpoint](xref:ResourceManager/AzureRM.Cdn/v2.2.0/Remove-AzureRmCdnEndpoint.md)

[Set-AzureRmCdnEndpoint](xref:ResourceManager/AzureRM.Cdn/v2.2.0/Set-AzureRmCdnEndpoint.md)

[Start-AzureRmCdnEndpoint](xref:ResourceManager/AzureRM.Cdn/v2.2.0/Start-AzureRmCdnEndpoint.md)

[Stop-AzureRmCdnEndpoint](xref:ResourceManager/AzureRM.Cdn/v2.2.0/Stop-AzureRmCdnEndpoint.md)


