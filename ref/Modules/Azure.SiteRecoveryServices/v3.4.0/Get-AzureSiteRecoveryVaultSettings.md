---
external help file: Microsoft.Azure.Commands.RecoveryServicesRdfe.dll-Help.xml
ms.assetid: 305511DC-477F-4A33-8B16-063B39B19ED3
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecoveryServices/v3.4.0/Get-AzureSiteRecoveryVaultSettings.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecoveryServices/v3.4.0/Get-AzureSiteRecoveryVaultSettings.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecoveryServices/v3.4.0/Get-AzureSiteRecoveryVaultSettings.md
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

# Get-AzureSiteRecoveryVaultSettings

## SYNOPSIS
Gets settings for a Site Recovery vault.

## SYNTAX

```
Get-AzureSiteRecoveryVaultSettings [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureSiteRecoveryVaultSettings** cmdlet gets settings related to the current Azure Site Recovery vault.

## EXAMPLES

### Example 1: Get settings information
```
PS C:\> Get-AzureSiteRecoveryVaultSettings
ResourceName                                                CloudServiceName
------------                                                ----------------
ContosoVault                                                RecoveryServices-6JP23WE3SKKOM5AFQG2YQAI22MNOWK52QDKWMUP...
```

This command gets settings information for the current  Azure Site Recovery vault.

## PARAMETERS

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

[Get-AzureSiteRecoveryVaultSettingsFile](xref:ServiceManagement/Azure.SiteRecoveryServices/v3.4.0/Get-AzureSiteRecoveryVaultSettingsFile.md)

[Import-AzureSiteRecoveryVaultSettingsFile](xref:ServiceManagement/Azure.SiteRecoveryServices/v3.4.0/Import-AzureSiteRecoveryVaultSettingsFile.md)


