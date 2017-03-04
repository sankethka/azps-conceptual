---
external help file: Microsoft.Azure.Commands.KeyVault.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 90BDAAAA-C9DE-4614-94FB-CA6BEE82D39B
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.KeyVault/v0.9.8/Backup-AzureKeyVaultKey.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.KeyVault/v0.9.8/Backup-AzureKeyVaultKey.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.KeyVault/v0.9.8/Backup-AzureKeyVaultKey.md
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

# Backup-AzureKeyVaultKey

## SYNOPSIS
Backs up a key in a vault.

## SYNTAX

```
Backup-AzureKeyVaultKey [-VaultName] <String> [-Name] <String> [[-OutputFile] <String>]
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Backup-AzureKeyVaultKey** cmdlet backs up a specified key in a vault by downloading it and storing it in a file.
If there are multiple versions of the key, all versions are included in the backup.
Because the downloaded content is encrypted, it cannot be used outside of Azure Key Vault.
You can restore a backed-up key to any key vault in the subscription that it was backed up from.

Typical reasons to use this cmdlet are: 

 -- You want to escrow a copy of your key, so that you have an offline copy in case you accidentally delete your key in your key vault.
 
 -- You created a key using Azure Key Vault and now want to clone the key into a different Azure region, so that you can use it from all instances of your distributed application.
Use the **Backup-AzureKeyVaultKey** cmdlet to retrieve the key in encrypted format and then use the Restore-AzureKeyVaultKey cmdlet and specify a key vault in the second region.

## EXAMPLES

### Example 1: Back up a key with an automatically generated file name
```
PS C:\>Backup-AzureKeyVaultKey -VaultName "MyKeyVault" -Name "MyKey"
```

This command retrieves the key named MyKey from the vault named MyKeyVault and saves a backup of that key to a file that is automatically named for you, and displays the file name.

### Example 2: Back up a key to a specified file name
```
PS C:\>Backup-AzureKeyVaultKey -VaultName "MyKeyVault" -Name "MyKey" -OutputFile "C:\Backup.blob"
```

This command retrieves the key named MyKey from the vault named MyKeyVault and saves a backup of that key to a file named Backup.blob.

## PARAMETERS

### -Name
Specifies the name of the key to back up.

```yaml
Type: String
Parameter Sets: (All)
Aliases: KeyName

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -OutputFile
Specifies the output file in which the backup blob is stored.
If you do not specify this parameter, this cmdlet generates a file name for you.
If you specify the name of an existing output file, the operation will not complete and returns an error message that the backup file already exists.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

```yaml
Type: AzureProfile
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VaultName
Specifies the name of the key vault that contains the key to back up.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AzureKeyVaultKey](xref:ResourceManager/AzureRM.KeyVault/v0.9.8/Add-AzureKeyVaultKey.md)

[Get-AzureKeyVaultKey](xref:ResourceManager/AzureRM.KeyVault/v0.9.8/Get-AzureKeyVaultKey.md)

[Remove-AzureKeyVaultKey](xref:ResourceManager/AzureRM.KeyVault/v0.9.8/Remove-AzureKeyVaultKey.md)

[Restore-AzureKeyVaultKey](xref:ResourceManager/AzureRM.KeyVault/v0.9.8/Restore-AzureKeyVaultKey.md)


