---
external help file: Microsoft.Azure.Commands.KeyVault.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: E217D4EE-D7C6-4D36-9D3D-7AE5B1A9E3FE
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.KeyVault/v0.9.8/Get-AzureKeyVaultKey.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.KeyVault/v0.9.8/Get-AzureKeyVaultKey.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.KeyVault/v0.9.8/Get-AzureKeyVaultKey.md
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

# Get-AzureKeyVaultKey

## SYNOPSIS
Gets the keys in a vault.

## SYNTAX

### ByVaultName (Default)
```
Get-AzureKeyVaultKey [-VaultName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

### ByKeyVersions
```
Get-AzureKeyVaultKey [-VaultName] <String> [-Name] <String> [-IncludeVersions] [-Profile <AzureProfile>]
 [<CommonParameters>]
```

### ByKeyName
```
Get-AzureKeyVaultKey [-VaultName] <String> [-Name] <String> [[-Version] <String>] [-Profile <AzureProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureKeyVaultKey** cmdlet gets the keys in an Azure Key Vault.
This cmdlet gets a specific **Microsoft.Azure.Commands.KeyVault.Models.KeyBundle** or a list of all **KeyBundle** objects in a vault.

## EXAMPLES

### Example 1: Get all the keys in a vault
```
PS C:\>Get-AzureKeyVaultKey -VaultName "Contoso"
```

This command gets all the keys in the vault named Contoso.

### Example 2: Get the current version of a key
```
PS C:\>Get-AzureKeyVaultKey -VaultName "Contoso" -KeyName "ITPfx"
```

This command gets the current version of the key named ITPfx in the vault named Contoso.

### Example 3: Get all versions of a key
```
PS C:\>Get-AzureKeyVaultKey -VaultName "Contoso" -KeyName "ITPfx" -IncludeVersions
```

This command gets all versions the key named ITPfx in the vault named Contoso.

### Example 4: Get a specific version of a key
```
PS C:\>$Key = Get-AzureKeyVaultKey -VaultName "Contoso" -KeyName "ITPfx" -Version "5A12A276385949DB8B5F82AFEE85CAED"
```

This command gets a specific version of the key named ITPfx in the vault named Contoso.
After running this command, you can inspect various properties of the key by navigating the $Key object.

## PARAMETERS

### -IncludeVersions
Indicates that this cmdlet gets all versions of a key.
The current version of a key is the first one on the list.
If you specify this parameter you must also specify the *Name* and *VaultName* parameters.

If you do not specify the *IncludeVersions* parameter, this cmdlet gets the current version of the key with the specified *Name*.

```yaml
Type: SwitchParameter
Parameter Sets: ByKeyVersions
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies the name of the key bundle to get.

```yaml
Type: String
Parameter Sets: ByKeyVersions, ByKeyName
Aliases: KeyName

Required: True
Position: 2
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
Specifies the name of the vault from which this cmdlet gets keys.
This cmdlet constructs the fully qualified domain name (FQDN) of a vault based on the name that this parameter specifies and your selected environment.

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

### -Version
Specifies the key version.
This cmdlet constructs the FQDN of a key based on the vault name, your currently selected environment, the key name, and the key version.

```yaml
Type: String
Parameter Sets: ByKeyName
Aliases: KeyVersion

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### String

## OUTPUTS

### List<Microsoft.Azure.Commands.KeyVault.Models.KeyBundle>, Microsoft.Azure.Commands.KeyVault.Models.KeyBundle

## NOTES

## RELATED LINKS

[Add-AzureKeyVaultKey](xref:ResourceManager/AzureRM.KeyVault/v0.9.8/Add-AzureKeyVaultKey.md)

[Remove-AzureKeyVaultKey](xref:ResourceManager/AzureRM.KeyVault/v0.9.8/Remove-AzureKeyVaultKey.md)

[Set-AzureKeyVaultKeyAttribute](xref:ResourceManager/AzureRM.KeyVault/v0.9.8/Set-AzureKeyVaultKeyAttribute.md)


