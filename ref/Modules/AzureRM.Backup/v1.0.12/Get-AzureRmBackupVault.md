---
external help file: Microsoft.Azure.Commands.AzureBackup.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 0B6F9E76-995E-4403-8F3F-80C67A698561
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Backup/v1.0.12/Get-AzureRmBackupVault.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Backup/v1.0.12/Get-AzureRmBackupVault.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Backup/v1.0.12/Get-AzureRmBackupVault.md
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

# Get-AzureRmBackupVault

## SYNOPSIS
Gets Backup vaults.

## SYNTAX

```
Get-AzureRmBackupVault [[-ResourceGroupName] <String>] [[-Name] <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmBackupVault** cmdlet gets Azure Backup vaults.
This cmdlet returns **AzureRmBackupVault** objects for use with other cmdlets.

## EXAMPLES

### Example 1: View all the Backup vaults
```
PS C:\>Get-AzureRmBackupVault
```

This command gets all the Azure Backup vaults.

### Example 2: View all vaults created in West US
```
PS C:\>Get-AzureRmBackupVault | Where-Object { $_.Region -eq "westus" }
```

This command gets all the Backup vaults.
The command passes them to the Where-Object cmdlet by using the pipeline operator.
That cmdlet filters the results based on the **Region** property.
For more information, type `Get-Help Where-Object`.

### Example 3: Get a specific vault
```
PS C:\>Get-AzureRmBackupVault -Name "Vault03"
ResourceId        : /subscriptions/4bfbe168-f42a-4a06-8f5a-331cad1f497e/resourceGroups/ResourceGroup011/providers/Microsoft.Backup
                    /BackupVault/Vault
Name              : Vault03
ResourceGroupName : ResourceGroup01
Region            : westus
Storage           : GeoRedundant
```

This command gets the vault named Vault03.

### Example 4: Count the number of vaults that have locally redundant storage
```
PS C:\>Get-AzureRmBackupVault | Where-Object { $_.Storage -match "LocallyRedundant" } | Measure-Object
Count    : 4
Average  : 
Sum      : 
Maximum  : 
Minimum  : 
Property :
```

This command gets all the Azure Backup vaults.
The command passes them to **Where-Object**, which filters the results based on the **Storage** property.
The command passes the ones that have a value of LocallyRedundant to the Measure-Object cmdlet, which counts the results.
For more information, type `Get-Help Measure-Object`.

## PARAMETERS

### -Name
Specifies the name of the Backup vault that this cmdlet gets.
If more than one Backup vault has the same name, this cmdlet returns them all.
Specify the *ResourceGroupName* parameter to get a unique vault.

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

### -ResourceGroupName
Specifies the name of an Azure resource group in which this cmdlet gets a Backup vault.

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

### AzureRmBackupVault

## NOTES
* None

## RELATED LINKS

[Get-AzureRmBackupContainer](xref:ResourceManager/AzureRM.Backup/v1.0.12/Get-AzureRmBackupContainer.md)

[New-AzureRmBackupVault](xref:ResourceManager/AzureRM.Backup/v1.0.12/New-AzureRmBackupVault.md)

[Remove-AzureRmBackupVault](xref:ResourceManager/AzureRM.Backup/v1.0.12/Remove-AzureRmBackupVault.md)

[Set-AzureRmBackupVault](xref:ResourceManager/AzureRM.Backup/v1.0.12/Set-AzureRmBackupVault.md)


