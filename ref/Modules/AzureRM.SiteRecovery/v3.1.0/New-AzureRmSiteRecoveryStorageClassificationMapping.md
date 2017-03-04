---
external help file: Microsoft.Azure.Commands.SiteRecovery.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: C073D0AF-29A4-47D8-93FE-2A8EF3676E13
updated_at: 1/6/2017 11:54 PM
ms.date: 1/6/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v3.1.0/New-AzureRmSiteRecoveryStorageClassificationMapping.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v3.1.0/New-AzureRmSiteRecoveryStorageClassificationMapping.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/d4abcf16ad04a20708d1ba686982ef3c842fa593/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v3.1.0/New-AzureRmSiteRecoveryStorageClassificationMapping.md
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

# New-AzureRmSiteRecoveryStorageClassificationMapping

## SYNOPSIS
Creates a storage classification mapping in Site Recovery.

## SYNTAX

```
New-AzureRmSiteRecoveryStorageClassificationMapping [-Name <String>]
 -PrimaryStorageClassification <ASRStorageClassification>
 -RecoveryStorageClassification <ASRStorageClassification> [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmSiteRecoveryStorageClassificationMapping** cmdlet creates a storage classification mapping in Azure Site Recovery.

## EXAMPLES


## PARAMETERS

### -Name
Specifies a name. 

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

### -PrimaryStorageClassification
Specifies the primary storage classification mapping.

```yaml
Type: ASRStorageClassification
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -RecoveryStorageClassification
Specifies a recovery storage classification mapping.

```yaml
Type: ASRStorageClassification
Parameter Sets: (All)
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

## NOTES

## RELATED LINKS

[Get-AzureRmSiteRecoveryStorageClassificationMapping](xref:ResourceManager/AzureRM.SiteRecovery/v3.1.0/Get-AzureRmSiteRecoveryStorageClassificationMapping.md)

[Remove-AzureRmSiteRecoveryStorageClassificationMapping](xref:ResourceManager/AzureRM.SiteRecovery/v3.1.0/Remove-AzureRmSiteRecoveryStorageClassificationMapping.md)
