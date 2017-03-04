---
external help file: Microsoft.Azure.Commands.RecoveryServicesRdfe.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 999C1BCD-B73A-4DE5-909D-B2B7D1DB5347
updated_at: 1/10/2017 10:37 PM
ms.date: 1/10/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecoveryServices/v3.0.0/New-AzureSiteRecoveryStorageMapping.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecoveryServices/v3.0.0/New-AzureSiteRecoveryStorageMapping.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/e460734ba591f3a2e82060724b596fbf2dcb96b3/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecoveryServices/v3.0.0/New-AzureSiteRecoveryStorageMapping.md
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

# New-AzureSiteRecoveryStorageMapping

## SYNOPSIS
Creates a mapping between an Azure Storage object and recovery Storage object.

## SYNTAX

```
New-AzureSiteRecoveryStorageMapping -PrimaryStorage <ASRStorage> -RecoveryStorage <ASRStorage>
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureSiteRecoveryStorageMapping** cmdlet creates a mapping between an Azure Site Recovery managed primary Azure Storage object and a recovery Storage object.

## EXAMPLES

### Example 1: Create a mapping between a storage object and a recovery storage object
```
PS C:\> $Servers = Get-AzureSiteRecoveryServer
PS C:\> $Storages = Get-AzureSiteRecoveryStorage -Server $Servers[0]
PS C:\> New-AzureSiteRecoveryStorageMapping -PrimaryStorage $Storages[0] -RecoveryStorage $Storages[1]
```

The first command gets servers for the current Azure Site Recovery vault by using the **Get-AzureSiteRecoveryServer** cmdlet.
The command stores the Site Recovery servers in the $Servers array variable.

The second command gets the site recovery storage for the first server in the $Servers array, and then stores it in the $Storages.

The final command creates a mapping between the primary network and the recovery network.
The command specifies the primary Storage object as the first element of $Storages.
The command specifies the recovery Storage object as the second element of $Storages.

## PARAMETERS

### -PrimaryStorage
Specifies the primary Storage to map to the recovery Storage.
To obtain an **ASRStorage** object, use the Get-AzureSiteRecoveryStorage cmdlet.

```yaml
Type: ASRStorage
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RecoveryStorage
Specifies the recovery Storage object.
This cmdlet maps the primary Storage object to the Storage object that this parameter specifies.
To obtain an **ASRStorage** object, use **Get-AzureSiteRecoveryStorage**.

```yaml
Type: ASRStorage
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
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

[Get-AzureSiteRecoveryStorage](xref:ServiceManagement/Azure.SiteRecoveryServices/v3.0.0/Get-AzureSiteRecoveryStorage.md)

[Get-AzureSiteRecoveryStorageMapping](xref:ServiceManagement/Azure.SiteRecoveryServices/v3.0.0/Get-AzureSiteRecoveryStorageMapping.md)

[Remove-AzureSiteRecoveryStorageMapping](xref:ServiceManagement/Azure.SiteRecoveryServices/v3.0.0/Remove-AzureSiteRecoveryStorageMapping.md)


