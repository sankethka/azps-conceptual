---
external help file: Microsoft.Azure.Commands.Cdn.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: F70CD0D1-4A02-4405-B2C9-661377F1F80B
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Cdn/v2.2.0/Get-AzureRmCdnProfileSsoUrl.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Cdn/v2.2.0/Get-AzureRmCdnProfileSsoUrl.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Cdn/v2.2.0/Get-AzureRmCdnProfileSsoUrl.md
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

# Get-AzureRmCdnProfileSsoUrl

## SYNOPSIS
Gets the single sign-on URL of a CDN profile.

## SYNTAX

### Parameter Set for fields parameters (Default)
```
Get-AzureRmCdnProfileSsoUrl -ProfileName <String> -ResourceGroupName <String> [<CommonParameters>]
```

### Parameter Set for object parameters
```
Get-AzureRmCdnProfileSsoUrl -CdnProfile <PSProfile> [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmCdnProfileSsoUrl** cmdlet gets the single sign-on URL of the Azure Content Delivery Network (CDN) profile.
This URL lets users conntect to a supplementary portal and use additional features of  CDN.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -ProfileName
Specifies the name of the CDN profile.

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
Specifies the name of the resource group name to which the profile belongs.

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
Specifies the CDN profile.

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
This cmdlet returns a URL.

## NOTES

## RELATED LINKS

[Get-AzureRMCdnProfile](xref:ResourceManager/AzureRM.Cdn/v2.2.0/Get-AzureRMCdnProfile.md)


