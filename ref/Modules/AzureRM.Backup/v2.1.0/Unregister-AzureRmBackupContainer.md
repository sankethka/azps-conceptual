---
external help file: Microsoft.Azure.Commands.AzureBackup.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 18D29692-A3F0-4A35-89F1-F41630446CA0
updated_at: 11/22/2016 8:52 PM
ms.date: 11/22/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Backup/v2.1.0/Unregister-AzureRmBackupContainer.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Backup/v2.1.0/Unregister-AzureRmBackupContainer.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/0cedc8f73bc96cf5ac4c69144e17b3de601fd3cc/azureps-cmdlets-docs/ResourceManager/AzureRM.Backup/v2.1.0/Unregister-AzureRmBackupContainer.md
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

# Unregister-AzureRmBackupContainer

## SYNOPSIS
Unregisters a container from a Backup vault.

## SYNTAX

```
Unregister-AzureRmBackupContainer [-Force] [-Container] <AzureRMBackupContainer> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The **Unregister-AzureRmBackupContainer** cmdlet unregisters the Windows Server or Azure virtual machine from an Azure Backup vault.
This cmdlet removes references to a container from the Backup vault.
Before you can unregister a container, you must delete any protected data associated with that container.

## EXAMPLES

### Example 1: Unregister a Windows Server
```
PS C:\>$Vault = Get-AzureRmBackupVault -Name "Vault03"
PS C:\> $Container = Get-AzureRmBackupContainer -Vault $Vault -Type Windows -Name "server01.contoso.com"
PS C:\> Unregister-AzureRmBackupContainer -Container $Container[0]
Unregister Server
This operation will delete all data in the backup vault that is associated with the server. Are you sure you want to unregister the server? 
[] Yes  [] No  [?] Help (default is "No"): Yes
```

The first command gets the vault named Vault03 by using the Get-AzureRmBackupVault cmdlet.
The command stores that object in the $Vault variable.

The second command gets a container that has the specified name in the vault in $Vault by using the Get-AzureRmBackupContainer cmdlet.
The command stores that object in the $Container variable.

The final command unregisters the specified Windows Server from the Azure Backup vault.

### Example 2: Unregister a Windows Server without confirmation
```
PS C:\>Unregister-AzureRmBackupContainer -Container $Container[0] -Force
```

This command unregisters the specified Windows Server from the Azure Backup vault, just as in the first example.
This command specifies the *Force* parameter.
Therefore, the command does not prompt you for confirmation.

## PARAMETERS

### -Container
Specifies the Windows Server or Azure virtual machine that this cmdlet unregisters.
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

### -Force
Forces the command to run without asking for user confirmation.
This parameter is relevant only for **AzureBackupContainer** objects of type Windows.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### AzureBackupContainer

## OUTPUTS

### AzureBackupJob
This cmdlet returns $Null if the container type is Windows Server.

## NOTES
* None

## RELATED LINKS

[Get-AzureRmBackupContainer](xref:ResourceManager/AzureRM.Backup/v2.1.0/Get-AzureRmBackupContainer.md)

[Get-AzureRmBackupVault](xref:ResourceManager/AzureRM.Backup/v2.1.0/Get-AzureRmBackupVault.md)

[Register-AzureRmBackupContainer](xref:ResourceManager/AzureRM.Backup/v2.1.0/Register-AzureRmBackupContainer.md)


