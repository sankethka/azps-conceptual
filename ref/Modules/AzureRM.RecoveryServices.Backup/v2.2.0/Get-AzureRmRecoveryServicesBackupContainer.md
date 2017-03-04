---
external help file: Microsoft.Azure.Commands.RecoveryServices.Backup.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 3E5074F3-7BFE-40EE-9F0B-3550C71CE569
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.RecoveryServices.Backup/v2.2.0/Get-AzureRmRecoveryServicesBackupContainer.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.RecoveryServices.Backup/v2.2.0/Get-AzureRmRecoveryServicesBackupContainer.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.RecoveryServices.Backup/v2.2.0/Get-AzureRmRecoveryServicesBackupContainer.md
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

# Get-AzureRmRecoveryServicesBackupContainer

## SYNOPSIS
Gets Backup containers.

## SYNTAX

```
Get-AzureRmRecoveryServicesBackupContainer [-ContainerType] <ContainerType> [[-BackupManagementType] <String>]
 [[-Name] <String>] [-FriendlyName <String>] [[-ResourceGroupName] <String>]
 [[-Status] <ContainerRegistrationStatus>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmRecoveryServicesBackupContainer** cmdlet gets a backup container.
A Backup container encapsulates data sources that are modelled as backup items.

Set the vault context by using the Set-AzureRmRecoveryServicesVaultContext cmdlet before you use the current cmdlet.

## EXAMPLES

### Example 1: Get a specific container
```
PS C:\>Get-AzureRmRecoveryServicesContainer -ContainerType "AzureVM" -Status "Registered" -Name "V2VM";
```

This command gets the container named V2VM of type AzureVM.

### Example 2: Get all containers of a specific type
```
PS C:\>Get-AzureRmRecoveryServicesBackupContainer -ContainerType Windows -BackupManagementType MARS
```

This command gets all Windows containers that are protected by Azure Backup agent.
The *BackupManagementType* parameter is only required for Windows containers.

## PARAMETERS

### -ContainerType
Specifies the backup container type.
The acceptable values for this parameter are:

- AzureVM 
- Windows
- AzureSQL

```yaml
Type: ContainerType
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BackupManagementType
Specifies the backup management type.
The acceptable values for this parameter are:

- AzureVM
- MARS
- AzureSQL

This parameter is used to differentiate Windows machines that are backed up using MARS agent or other backup engines.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies the name of the container to get.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group.
This parameter is for Azure virtual machines only.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Status
Specifies the container registration status.
The acceptable values for this parameter are:

- Registered

```yaml
Type: ContainerRegistrationStatus
Parameter Sets: (All)
Aliases: 

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FriendlyName
Specifies the friendly name of the container to get.

```yaml
Type: String
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

[Get-AzureRmRecoveryServicesBackupItem](xref:ResourceManager/AzureRM.RecoveryServices.Backup/v2.2.0/Get-AzureRmRecoveryServicesBackupItem.md)

[Get-AzureRmRecoveryServicesBackupManagementServer](xref:ResourceManager/AzureRM.RecoveryServices.Backup/v2.2.0/Get-AzureRmRecoveryServicesBackupManagementServer.md)

[Unregister-AzureRmRecoveryServicesBackupContainer](xref:ResourceManager/AzureRM.RecoveryServices.Backup/v2.2.0/Unregister-AzureRmRecoveryServicesBackupContainer.md)


