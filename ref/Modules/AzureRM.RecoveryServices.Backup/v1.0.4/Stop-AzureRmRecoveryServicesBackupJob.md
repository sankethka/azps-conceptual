---
external help file: Microsoft.Azure.Commands.RecoveryServices.Backup.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: D71E1B64-58E9-4665-A6CB-01E70F6E60AD
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.RecoveryServices.Backup/v1.0.4/Stop-AzureRmRecoveryServicesBackupJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.RecoveryServices.Backup/v1.0.4/Stop-AzureRmRecoveryServicesBackupJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.RecoveryServices.Backup/v1.0.4/Stop-AzureRmRecoveryServicesBackupJob.md
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

# Stop-AzureRmRecoveryServicesBackupJob

## SYNOPSIS
Cancels a running job.

## SYNTAX

### JobFilterSet (Default)
```
Stop-AzureRmRecoveryServicesBackupJob [-Job] <JobBase> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

### IdFilterSet
```
Stop-AzureRmRecoveryServicesBackupJob [-JobId] <String> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Stop-AzureRmRecoveryServicesBackupJob** cmdlet cancels an existing Azure Backup job.
Use this cmdlet to stop a job that takes too long and blocks other activities.

You can cancel only Backup and Restore job types.

Set the vault context by using the Set-AzureRmRecoveryServicesVaultContext cmdlet before you use the current cmdlet.

## EXAMPLES

### Example 1: Stop a backup job
```
PS C:\>$Job = Get-AzureRmRecoveryServicesBackupJob -Operation Backup
PS C:\> Stop-AzureRmRecoveryServicesBackupJob -JobID $Job.InstanceId
```

The first command gets a backup job, and then stores the job in the $Job variable.

The last command stops the job by specifying the Instance ID of the backup job in $Job.

## PARAMETERS

### -InformationAction
Specifies how this cmdlet responds to an information event.

The acceptable values for this parameter are:

- Continue
- Ignore
- Inquire
- SilentlyContinue
- Stop
- Suspend

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: infa

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InformationVariable
Specifies an information variable.

```yaml
Type: String
Parameter Sets: (All)
Aliases: iv

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -JobId
Specifies the ID of the job to cancel.
The ID is the InstanceId property of a **BackupJob** object.
To obtain an **BackupJob** object, use Get-AzureRmRecoveryServicesBackupJob.

```yaml
Type: String
Parameter Sets: IdFilterSet
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Job
Specifies a job that this cmdlet cancels.
To obtain a **BackupJob** object, use the Get-AzureRmRecoveryServicesBackupJob cmdlet.

```yaml
Type: JobBase
Parameter Sets: JobFilterSet
Aliases: 

Required: True
Position: 1
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

[Get-AzureRmRecoveryServicesBackupJob](xref:ResourceManager/AzureRM.RecoveryServices.Backup/v1.0.4/Get-AzureRmRecoveryServicesBackupJob.md)

[Wait-AzureRmRecoveryServicesBackupJob](xref:ResourceManager/AzureRM.RecoveryServices.Backup/v1.0.4/Wait-AzureRmRecoveryServicesBackupJob.md)


