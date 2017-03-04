---
external help file: Microsoft.Azure.Commands.Cdn.dll-Help.xml
ms.assetid: F93D9D7C-AC2A-4D83-87EC-4A54CD45272B
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Cdn/v2.5.0/Get-AzureRmCdnEndpoint.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Cdn/v2.5.0/Get-AzureRmCdnEndpoint.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ResourceManager/AzureRM.Cdn/v2.5.0/Get-AzureRmCdnEndpoint.md
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
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### Parameter Set for object parameters
```
Get-AzureRmCdnEndpoint [-EndpointName <String>] -CdnProfile <PSProfile> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRMCdnEndpoint** cmdlet gets an Azure Content Delivery Network (CDN) endpoint and its associated configuration data.

## EXAMPLES

### 1:
```

```

## PARAMETERS

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

###  
This cmdlet returns an endpoint object.

## NOTES

## RELATED LINKS

[New-AzureRmCdnEndpoint](xref:ResourceManager/AzureRM.Cdn/v2.5.0/New-AzureRmCdnEndpoint.md)

[Remove-AzureRmCdnEndpoint](xref:ResourceManager/AzureRM.Cdn/v2.5.0/Remove-AzureRmCdnEndpoint.md)

[Set-AzureRmCdnEndpoint](xref:ResourceManager/AzureRM.Cdn/v2.5.0/Set-AzureRmCdnEndpoint.md)

[Start-AzureRmCdnEndpoint](xref:ResourceManager/AzureRM.Cdn/v2.5.0/Start-AzureRmCdnEndpoint.md)

[Stop-AzureRmCdnEndpoint](xref:ResourceManager/AzureRM.Cdn/v2.5.0/Stop-AzureRmCdnEndpoint.md)


