---
external help file: Microsoft.Azure.Commands.RecoveryServices.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 09BB1BB4-3676-470F-9D64-B627C077482D
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v0.9.8/Get-AzureSiteRecoveryVaultSettingsFile.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v0.9.8/Get-AzureSiteRecoveryVaultSettingsFile.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v0.9.8/Get-AzureSiteRecoveryVaultSettingsFile.md
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

# Get-AzureSiteRecoveryVaultSettingsFile

## SYNOPSIS
Gets the settings file for an Azure Site Recovery vault.

## SYNTAX

### ByParam (Default)
```
Get-AzureSiteRecoveryVaultSettingsFile -Name <String> -Location <String> [-SiteName <String>]
 [-SiteId <String>] [-Path <String>] [-Profile <AzureProfile>] [<CommonParameters>]
```

### ByObject
```
Get-AzureSiteRecoveryVaultSettingsFile -Vault <ASRVault> [-Site <ASRSite>] [-Profile <AzureProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureSiteRecoveryVaultSettingsFile** cmdlet gets the settings file for an Azure Site Recovery vault.

## EXAMPLES

### Example 1: Get the settings file for a vault
```
PS C:\>$Vault = Get-AzureSiteRecoveryVault -Name "ContosoVault"
PS C:\> Get-AzureSiteRecoveryVaultSettingsFile -Vault $Vault
FilePath 
-------- 
C:\Users\ContosoAdmin\ContosoVault_2015-02-02T05-39-23.VaultCredentials
```

The first command gets the active Azure Site Recovery vault named ContosoVault by using the **Get-AzureSiteRecoveryVault** cmdlet.
The command stores that vault in the $Vault variable.

The second command gets the settings file for the vault stored in $Vault.

## PARAMETERS

### -Location
Specifies the name of the geo to which the vault belongs.

```yaml
Type: String
Parameter Sets: ByParam
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies the name of a vault.
This cmdlet gets the settings file of the vault that this cmdlet specifies.

```yaml
Type: String
Parameter Sets: ByParam
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Site
Specifies a site for which to get a settings file.
To obtain a **Site** object, use the **Get-AzureSiteRecoverySite** cmdlet.

```yaml
Type: ASRSite
Parameter Sets: ByObject
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SiteId
Specifies the ID of a site.
If the cmdlet downloads vault credentials for a Hyper-V site, this parameter specifies the site ID.

```yaml
Type: String
Parameter Sets: ByParam
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SiteName
Specifies the name of a site.
If the cmdlet downloads vault credentials for a Hyper-V site, this parameter specifies the site ID.

```yaml
Type: String
Parameter Sets: ByParam
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Vault
Specifies a vault for which to get a settings file.
To obtain an **ASRVault** object, use the **Get-AzureSiteRecoveryVault** cmdlet.

```yaml
Type: ASRVault
Parameter Sets: ByObject
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Path
Specifies the full path of the vault settings file.

```yaml
Type: String
Parameter Sets: ByParam
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Profile
Specifies an Azure profile.

```yaml
Type: AzureProfile
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

[Import-AzureSiteRecoveryVaultSettingsFile](xref:ServiceManagement/Azure.SiteRecovery/v0.9.8/Import-AzureSiteRecoveryVaultSettingsFile.md)

[Get-AzureSiteRecoveryVault](xref:ServiceManagement/Azure.SiteRecovery/v0.9.8/Get-AzureSiteRecoveryVault.md)

[Get-AzureSiteRecoverySite](xref:ServiceManagement/Azure.SiteRecovery/v0.9.8/Get-AzureSiteRecoverySite.md)


