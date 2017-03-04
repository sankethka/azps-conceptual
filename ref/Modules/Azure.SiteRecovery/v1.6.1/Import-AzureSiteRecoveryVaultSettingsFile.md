---
external help file: Microsoft.Azure.Commands.RecoveryServicesRdfe.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: E881BF94-09AE-4F0B-BC5B-34FC3306BB8B
updated_at: 1/14/2017 6:11 PM
ms.date: 1/14/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v1.6.1/Import-AzureSiteRecoveryVaultSettingsFile.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v1.6.1/Import-AzureSiteRecoveryVaultSettingsFile.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/b2aea81f0846229c7b3ea0309bd2591c3b2941ff/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v1.6.1/Import-AzureSiteRecoveryVaultSettingsFile.md
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

# Import-AzureSiteRecoveryVaultSettingsFile

## SYNOPSIS
Imports a vault settings file for Azure Site Recovery.

## SYNTAX

```
Import-AzureSiteRecoveryVaultSettingsFile [-Path] <String> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Import-AzureSiteRecoveryVaultSettingsFile** cmdlet imports a vault settings file for Microsoft Azure Site Recovery.
You specify a vault settings file when you connect to an Azure Site Recovery vault.
You can download the vault settings file from an Azure Site Recovery vault when you log on to the Azure portal.

## EXAMPLES

### Example 1: Import a vault settings file
```
PS C:\> Import-AzureSiteRecoveryVaultSettingsFile -Path "C:\Users\Contoso\Contosovault Monday, October 6, 2014.VaultCredentials"

VERBOSE: Vault Settings File path: C:\Users\Contoso\Contosovault Monday, October 6, 2014.VaultCredentials

ResourceName                                                CloudServiceName
------------                                                ----------------
Contosovault                                              RecoveryServices-6JP23WE3SKKOM5AFQG2YQAI22MNOWK52QDKWMUP...
```

This command imports the vault settings file at the specified path.

## PARAMETERS

### -Path
Specifies the full path to the vault settings file to import.
You can download this file from the Azure Site Recovery vault portal and store it locally.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureSiteRecoveryVaultSettings](xref:ServiceManagement/Azure.SiteRecovery/v1.6.1/Get-AzureSiteRecoveryVaultSettings.md)


