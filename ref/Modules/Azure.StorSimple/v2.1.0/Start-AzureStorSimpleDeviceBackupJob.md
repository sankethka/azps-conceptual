---
external help file: Microsoft.WindowsAzure.Commands.StorSimple.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 46EBDF03-FA38-4E52-A139-A3BDD16CE87A
updated_at: 1/13/2017 7:06 PM
ms.date: 1/13/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v2.1.0/Start-AzureStorSimpleDeviceBackupJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v2.1.0/Start-AzureStorSimpleDeviceBackupJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/e7a120a2ee01bf4c44bb7fca528ffdea69e8b122/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v2.1.0/Start-AzureStorSimpleDeviceBackupJob.md
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

# Start-AzureStorSimpleDeviceBackupJob

## SYNOPSIS
Starts a new job that creates a backup from an existing backup policy.

## SYNTAX

### Empty (Default)
```
Start-AzureStorSimpleDeviceBackupJob [-DeviceName] <String> [-BackupPolicyId] <String> [-WaitForComplete]
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### BackupTypeGiven
```
Start-AzureStorSimpleDeviceBackupJob [-DeviceName] <String> [-BackupPolicyId] <String> [-BackupType] <String>
 [-WaitForComplete] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Start-AzureStorSimpleDeviceBackupJob** cmdlet starts a new job that creates a backup from an existing backup policy on a StorSimple device.
By default, this cmdlet creates a local snapshot backup.
To create a cloud backup, specify a value of CloudSnapshot for the *BackupType* parameter.

## EXAMPLES

### Example 1: Create a local snapshot backup
```
PS C:\> Start-AzureStorSimpleDeviceBackupJob -DeviceName "Contoso63-AppVm" -BackupPolicyId "de088eac-b283-4d92-b501-a759845fdf3f"

JobId                                                                StatusCode RequestId
-----                                                                ---------- ---------
fb9acdca-ed6f-4b69-93f2-5c0bce0a1e08                                 Accepted   456cf6bafd427103b71c07145e26d35c

VERBOSE: Your backup operation has been submitted for processing. Use commandlet "Get-AzureStorSimpleJob -JobId
fb9acdca-ed6f-4b69-93f2-5c0bce0a1e08" to track status.
```

This command creates a local snapshot backup for the specified policy ID.
This command starts the job, and then returns a **TaskResponse** object.
To see the status of the job, use the **Get-AzureStorSimpleTask** cmdlet.

### Example 2: Create a cloud snapshot backup and wait to finish
```
PS C:\> Start-AzureStorSimpleDeviceBackupJob -DeviceName "Contoso63-AppVm" -BackupPolicyId "de088eac-b283-4d92-b501-a759845fdf3f" -BackupType CloudSnapshot -WaitForComplete

Error      : Microsoft.WindowsAzure.Management.StorSimple.Models.ErrorDetails
JobId      : fb9acdca-ed6f-4b69-93f2-5c0bce0a1e08
JobSteps   : {}
Result     : Succeeded
Status     : Completed
TaskResult : Succeeded
StatusCode : OK
RequestId  : f28ecf6cf75a7f128ca18e6ae14f9003
```

This command creates a cloud snapshot backup for the specified policy ID.
This command specifies the *WaitForComplete* parameter, so the command completes the task, and then returns a **TaskStatusInfo** object for the job.

## PARAMETERS

### -BackupPolicyId
Specifies the ID of the backup policy to use to create the backup.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BackupType
Specifies the backup type.
Valid values are: LocalSnapshot and CloudSnapshot.

```yaml
Type: String
Parameter Sets: BackupTypeGiven
Aliases: 
Accepted values: LocalSnapshot, CloudSnapshot

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeviceName
Specifies the name of the StorSimple device on which to start the backup job.

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

### -WaitForComplete
Indicates that this cmdlet waits for the operation to complete before it returns control to the Windows PowerShell console.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### TaskStatusInfo, TaskResponse
This cmdlet returns a **TaskStatusInfo** object if you specify the *WaitForComplete* parameter.
If you do not specify that parameter, it returns a **TaskResponse** object.

## NOTES

## RELATED LINKS

[Get-AzureStorSimpleJob](xref:ServiceManagement/Azure.StorSimple/v2.1.0/Get-AzureStorSimpleJob.md)

[Start-AzureStorSimpleDeviceBackupRestoreJob](xref:ServiceManagement/Azure.StorSimple/v2.1.0/Start-AzureStorSimpleDeviceBackupRestoreJob.md)


