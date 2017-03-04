---
external help file: Microsoft.Azure.Commands.AzureBackup.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 0A5719E5-EA71-48D0-9D80-D587FC442F0D
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Backup/v2.2.0/Backup-AzureRmBackupItem.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Backup/v2.2.0/Backup-AzureRmBackupItem.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Backup/v2.2.0/Backup-AzureRmBackupItem.md
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

# Backup-AzureRmBackupItem

## SYNOPSIS
Starts a backup for a Backup item.

## SYNTAX

```
Backup-AzureRmBackupItem [-Item] <AzureRMBackupItem> [<CommonParameters>]
```

## DESCRIPTION
The **Backup-AzureRmBackupItem** cmdlet starts a backup for a protected Azure Backup item that is not tied to the backup schedule.
You can do an initial backup immediately after you enable protection or start a backup after a scheduled backup fails.

If an existing backup job is running, this cmdlet fails.

## EXAMPLES

### Example 1: Start to back up a virtual machine
```
PS C:\>$Vault = Get-AzureRmBackupVault -Name "Vault03"
PS C:\> $Container = Get-AzureRmBackupContainer -Vault $Vault -Type AzureVM -Name "DPMSERVER.CONTOSO.COM"
PS C:\> Get-AzureRmBackupItem -Container $Container | Backup-AzureRmBackupItem
WorkloadName    Operation       Status          StartTime              EndTime
------------    ---------       ------          ---------              -------
co03-vm         Backup          InProgress      26-Aug-15 12:24:01 PM  01-Jan-01 12:00:00 AM
```

The first command gets the vault named Vault03 by using the Get-AzureRmBackupVault cmdlet.
The command stores that object in the $Vault variable.

The second command gets a container that has the specified name in the vault in $Vault by using the Get-AzureRmBackupContainer cmdlet.
The command stores that object in the $Container variable.

The last command gets the backup items in $Container by using the Get-AzureRmBackupItem cmdlet.
The command passes the items to the current cmdlet by using the pipeline operator.
The current cmdlet starts backing up the virtual machine in the container.

## PARAMETERS

### -Item
Specifies a Backup item for which this cmdlet starts a backup operation.

```yaml
Type: AzureRMBackupItem
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### AzureRMBackupItem

## OUTPUTS

### AzureRmBackupJob

## NOTES

## RELATED LINKS

[Get-AzureRmBackupItem](xref:ResourceManager/AzureRM.Backup/v2.2.0/Get-AzureRmBackupItem.md)

[Get-AzureRmBackupVault](xref:ResourceManager/AzureRM.Backup/v2.2.0/Get-AzureRmBackupVault.md)

[Restore-AzureRmBackupItem](xref:ResourceManager/AzureRM.Backup/v2.2.0/Restore-AzureRmBackupItem.md)


