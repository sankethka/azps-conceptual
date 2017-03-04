---
external help file: Microsoft.WindowsAzure.Commands.StorSimple.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 0D90330E-0332-41F1-8272-DAC761D54BD8
updated_at: 1/13/2017 8:31 PM
ms.date: 1/13/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v1.6.1/Confirm-AzureStorSimpleLegacyVolumeContainerStatus.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v1.6.1/Confirm-AzureStorSimpleLegacyVolumeContainerStatus.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/4df29933055c067f66dd8427e7818e4e4ab777eb/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v1.6.1/Confirm-AzureStorSimpleLegacyVolumeContainerStatus.md
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

# Confirm-AzureStorSimpleLegacyVolumeContainerStatus

## SYNOPSIS
Initiates the commit or rollback of the volume containers that are migrated.

## SYNTAX

### MigrateSpecificContainer
```
Confirm-AzureStorSimpleLegacyVolumeContainerStatus [-LegacyConfigId] <String> [-MigrationOperation] <String>
 [-LegacyContainerNames] <String[]> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### MigrateAllContainer
```
Confirm-AzureStorSimpleLegacyVolumeContainerStatus [-LegacyConfigId] <String> [-MigrationOperation] <String>
 [-All] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Confirm-AzureStorSimpleLegacyVolumeContainerStatus** cmdlet initiates the commit or rollback of the volume containers that are migrated as part of a legacy migration.
The rollback restores the appliance to the original ownership.
The commit assigns the ownership to the target appliance.

## EXAMPLES

### Example 1: Initiate a commit operation on a specific volume container
```
PS C:\> Confirm-AzureStorSimpleLegacyVolumeContainerStatus -LegacyConfigId "c5a831e1-7888-44f4-adf1-92994be630c3" -LegacyContainerNames "OneSDKAzureCloud" -MigrationOperation Commit
Please check the commit/discard status using Get-AzureStorSimpleLegacyVolumeContainerConfirmStatus
```

This command initiates a commit operation on the specified volume container for the specified legacy configuration ID.
To see the status of the operation, use the **Get-AzureStorSimpleLegacyVolumeContainerStatus** cmdlet.

### Example 2: Initiate a rollback operation on a specific volume container
```
PS C:\> Confirm-AzureStorSimpleLegacyVolumeContainerStatus -LegacyConfigId "c5a831e1-7888-44f4-adf1-92994be630c3" -LegacyContainerNames "OneSDKAzureCloud" -MigrationOperation Rollback
Please check the commit/discard status using Get-AzureStorSimpleLegacyVolumeContainerConfirmStatus
```

This command initiates a rollback operation on the specified volume container for the specified legacy configuration ID.

### Example 3: Initiate a commit operation on all volume containers
```
PS C:\> Confirm-AzureStorSimpleLegacyVolumeContainerStatus -LegacyConfigId "c5a831e1-7888-44f4-adf1-92994be630c3" -MigrationOperation Commit -All
Please check the commit/discard status using Get-AzureStorSimpleLegacyVolumeContainerConfirmStatus
```

This command initiates a commit operation on all volume container for the specified legacy configuration ID.

### Example 4: Initiate a rollback operation on all volume containers
```
PS C:\> Confirm-AzureStorSimpleLegacyVolumeContainerStatus -LegacyConfigId "c5a831e1-7888-44f4-adf1-92994be630c3" -MigrationOperation Rollback -All
Please check the commit/discard status using Get-AzureStorSimpleLegacyVolumeContainerConfirmStatus
```

This command initiates a rollback operation on all volume containers for the specified legacy configuration ID.

## PARAMETERS

### -All
Indicates that this cmdlet initiates a roll back or commit operation on all volume containers in the imported configuration file.

```yaml
Type: SwitchParameter
Parameter Sets: MigrateAllContainer
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LegacyConfigId
Specifies the unique ID of the configuration of the legacy appliance.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LegacyContainerNames
Specifies an array of volume container names for which the migration plan applies.

```yaml
Type: String[]
Parameter Sets: MigrateSpecificContainer
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MigrationOperation
Specifies whether this cmdlet performs a commit or rollback.
Valid values are: Commit and Rollback.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 
Accepted values: Commit, Rollback

Required: True
Position: 2
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureStorSimpleLegacyVolumeContainerStatus](xref:ServiceManagement/Azure.StorSimple/v1.6.1/Get-AzureStorSimpleLegacyVolumeContainerStatus.md)

[Get-AzureStorSimpleLegacyVolumeContainerConfirmStatus](xref:ServiceManagement/Azure.StorSimple/v1.6.1/Get-AzureStorSimpleLegacyVolumeContainerConfirmStatus.md)

[Get-AzureStorSimpleLegacyVolumeContainerMigrationPlan](xref:ServiceManagement/Azure.StorSimple/v1.6.1/Get-AzureStorSimpleLegacyVolumeContainerMigrationPlan.md)


