---
external help file: Microsoft.Azure.Commands.RecoveryServicesRdfe.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 62B7F80D-39E8-4429-AC9C-2148D7924CCB
updated_at: 1/10/2017 11:37 PM
ms.date: 1/10/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v3.0.0/New-AzureSiteRecoverySite.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v3.0.0/New-AzureSiteRecoverySite.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/980a24e01d9dd1158e819b034a40be469f1f1b06/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v3.0.0/New-AzureSiteRecoverySite.md
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

# New-AzureSiteRecoverySite

## SYNOPSIS
Creates an Azure Site Recovery site.

## SYNTAX

```
New-AzureSiteRecoverySite -Name <String> [-Vault <ASRVault>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureSiteRecoverySite** cmdlet creates an Azure Site Recovery site.

## EXAMPLES

### Example 1: Create a site recovery site
```
PS C:\> New-AzureSiteRecoverySite -Name "RecoverySite07"
```

This command creates a site recovery site named RecoverySite07.

## PARAMETERS

### -Name
Specifies a name for the site to create.

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
Specifies an Azure profile.

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

### -Vault
Specifies a vault for which to create the site.
To obtain an **ASRVault** object, use the **Get-AzureSiteRecoveryVault** cmdlet.

```yaml
Type: ASRVault
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

[Get-AzureSiteRecoverySite](xref:ServiceManagement/Azure.SiteRecovery/v3.0.0/Get-AzureSiteRecoverySite.md)

[Get-AzureSiteRecoveryVault](xref:ServiceManagement/Azure.SiteRecovery/v3.0.0/Get-AzureSiteRecoveryVault.md)


