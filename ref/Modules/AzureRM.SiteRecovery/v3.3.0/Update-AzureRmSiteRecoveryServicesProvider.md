---
external help file: Microsoft.Azure.Commands.SiteRecovery.dll-Help.xml
ms.assetid: 48DCC0DC-1D59-4C30-9E1F-BBED7F94844F
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v3.3.0/Update-AzureRmSiteRecoveryServicesProvider.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v3.3.0/Update-AzureRmSiteRecoveryServicesProvider.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v3.3.0/Update-AzureRmSiteRecoveryServicesProvider.md
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

# Update-AzureRmSiteRecoveryServicesProvider

## SYNOPSIS
Updates the information received from the Azure Site Recovery Services Provider.

## SYNTAX

```
Update-AzureRmSiteRecoveryServicesProvider -ServicesProvider <ASRRecoveryServicesProvider> [<CommonParameters>]
```

## DESCRIPTION
The **Update-AzureRmSiteRecoveryServicesProvider** cmdlet updates the information received from the Azure Site Recovery Services Provider.
You can use this cmdlet to trigger a refresh of the information received from the Recovery Services Provider.

## EXAMPLES

## PARAMETERS

### -ServicesProvider
Specifies the Azure Site Recovery Services Provider object.

```yaml
Type: ASRRecoveryServicesProvider
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

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureRmSiteRecoveryServicesProvider](xref:ResourceManager/AzureRM.SiteRecovery/v3.3.0/Get-AzureRmSiteRecoveryServicesProvider.md)

[Remove-AzureRmSiteRecoveryServicesProvider](xref:ResourceManager/AzureRM.SiteRecovery/v3.3.0/Remove-AzureRmSiteRecoveryServicesProvider.md)
