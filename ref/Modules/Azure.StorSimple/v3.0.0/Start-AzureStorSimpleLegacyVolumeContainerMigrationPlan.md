---
external help file: Microsoft.WindowsAzure.Commands.StorSimple.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 25A7DACC-CB6F-4C03-BC43-6AF2828082DB
updated_at: 1/10/2017 6:53 PM
ms.date: 1/10/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v3.0.0/Start-AzureStorSimpleLegacyVolumeContainerMigrationPlan.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v3.0.0/Start-AzureStorSimpleLegacyVolumeContainerMigrationPlan.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/2aa2c6b171a81049ff40feeada5894cd7badff85/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v3.0.0/Start-AzureStorSimpleLegacyVolumeContainerMigrationPlan.md
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

# Start-AzureStorSimpleLegacyVolumeContainerMigrationPlan

## SYNOPSIS
Starts the creation of a migration plan.

## SYNTAX

### MigrateSpecificContainer
```
Start-AzureStorSimpleLegacyVolumeContainerMigrationPlan [-LegacyConfigId] <String>
 [-LegacyContainerNames] <String[]> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### MigrateAllContainer
```
Start-AzureStorSimpleLegacyVolumeContainerMigrationPlan [-LegacyConfigId] <String> [-All]
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Start-AzureStorSimpleLegacyVolumeContainerMigrationPlan** cmdlet starts the creation of a migration plan.
The creation of a migration plan is asynchronous.
To see the status of the migration plan, use the **Get-AzureStorSimpleLegacyVolumeContainerMigrationPlan** cmdlet.

## EXAMPLES

### Example 1: Start a migration plan
```
PS C:\> Start-AzureStorSimpleLegacyVolumeContainerMigrationPlan -LegacyConfigId "c5a831e1-7888-44f4-adf1-92994be630c3" -LegacyContainerNames "OneSDKAzureCloud"

Successfully started estimating the Migration Plan. Please check details with Get-AzureStorSimpleLegacyVolumeContainerMigrationPlan
```

This command starts creation of a migration plan for the legacy container named OneSDKAzureCloud.
The command returns a message about the status of the plan, and to use the **Get-AzureStorSimpleLegacyVolumeContainerMigrationPlan** cmdlet for up to date information.

### Example 2: Start migration plan for all volume containers
```
PS C:\> Start-AzureStorSimpleLegacyVolumeContainerMigrationPlan -LegacyConfigId "c5a831e1-7888-44f4-adf1-92994be630c3" -All

Successfully started estimating the Migration Plan. Please check details with Get-AzureStorSimpleLegacyVolumeContainerMigrationPlan
```

This command starts creation of migration plan for all legacy volume containers in the configuration file that is imported.

## PARAMETERS

### -All
Indicates that this cmdlet starts migration time estimates for all volume containers in the imported configuration file.

```yaml
Type: SwitchParameter
Parameter Sets: MigrateAllContainer
Aliases: 

Required: True
Position: 2
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
Specifies an array of volume container names for which to create a migration plan.

```yaml
Type: String[]
Parameter Sets: MigrateSpecificContainer
Aliases: 

Required: True
Position: 2
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

### None

## OUTPUTS

### String
This cmdlet returns the status of the migration plan job if it has been successfully started in the appliance.

## NOTES

## RELATED LINKS

[Get-AzureStorSimpleLegacyVolumeContainerMigrationPlan](xref:ServiceManagement/Azure.StorSimple/v3.0.0/Get-AzureStorSimpleLegacyVolumeContainerMigrationPlan.md)


