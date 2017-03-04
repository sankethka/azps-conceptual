---
external help file: Microsoft.Azure.Commands.AzureBackup.dll-Help.xml
ms.assetid: 2605B232-10CA-4426-9917-7C9719C15166
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Backup/v2.5.0/Enable-AzureRmBackupContainerReregistration.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Backup/v2.5.0/Enable-AzureRmBackupContainerReregistration.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ResourceManager/AzureRM.Backup/v2.5.0/Enable-AzureRmBackupContainerReregistration.md
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

# Enable-AzureRmBackupContainerReregistration

## SYNOPSIS
Reregisters a server to connect to a Backup vault.

## SYNTAX

```
Enable-AzureRmBackupContainerReregistration [-Container] <AzureRMBackupContainer> [<CommonParameters>]
```

## DESCRIPTION
The **Enable-AzureRmBackupContainerReregistration** cmdlet reregisters a server to connect to an Azure Backup vault and continue the Backup recovery point chain.

If you destroy a server, all its cloud backup points remain in the Backup vault.
If you create a replacement server and assign it the same fully qualified domain name, you can connect the server back to the same vault.
This cmdlet enables Backup to make backups and add new backup points to the existing set.
The new the server continues in the backup chain.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -Container
Specifies the container that this cmdlet reregisters.
To obtain an **AzureRmBackupContainer**, use the Get-AzureRmBackupContainer cmdlet.

```yaml
Type: AzureRMBackupContainer
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

### AzureBackupContainer

## OUTPUTS

### None

## NOTES

## RELATED LINKS

[Get-AzureRmBackupContainer](xref:ResourceManager/AzureRM.Backup/v2.5.0/Get-AzureRmBackupContainer.md)

[Register-AzureRmBackupContainer](xref:ResourceManager/AzureRM.Backup/v2.5.0/Register-AzureRmBackupContainer.md)


