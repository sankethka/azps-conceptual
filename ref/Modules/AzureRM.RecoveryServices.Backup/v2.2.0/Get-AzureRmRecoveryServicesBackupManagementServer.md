---
external help file: Microsoft.Azure.Commands.RecoveryServices.Backup.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 0F4BFB25-4B81-4C4E-B25F-DE6315BC2C51
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.RecoveryServices.Backup/v2.2.0/Get-AzureRmRecoveryServicesBackupManagementServer.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.RecoveryServices.Backup/v2.2.0/Get-AzureRmRecoveryServicesBackupManagementServer.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.RecoveryServices.Backup/v2.2.0/Get-AzureRmRecoveryServicesBackupManagementServer.md
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

# Get-AzureRmRecoveryServicesBackupManagementServer

## SYNOPSIS
Gets SCDPM and Azure Backup management servers.

## SYNTAX

```
Get-AzureRmRecoveryServicesBackupManagementServer [[-Name] <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmRecoveryServicesBackupManagementServer** cmdlet gets a list of Backup management servers that are registered in a vault.

There are two types of Backup management servers: System Center Data Protection Manager (SCDPM) and Azure Backup management servers.
Backup management servers are installed separately to manage Backup orchestration.

Set the vault context by using the Set-AzureRmRecoveryServicesVaultContext cmdlet before you use the current cmdlet.

## EXAMPLES

### Example 1: Get all Backup management servers
```
PS C:\>Get-AzureRmRecoveryServicesBackupManagementServer
```

This command gets all Backup management servers registered with the vault.

## PARAMETERS

### -Name
Specifies the name of the Backup management server to get.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
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

[Unregister-AzureRmRecoveryServicesBackupManagementServer](xref:ResourceManager/AzureRM.RecoveryServices.Backup/v2.2.0/Unregister-AzureRmRecoveryServicesBackupManagementServer.md)


