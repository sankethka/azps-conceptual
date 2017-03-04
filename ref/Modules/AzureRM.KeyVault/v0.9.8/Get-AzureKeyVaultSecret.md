---
external help file: Microsoft.Azure.Commands.KeyVault.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 6F1FBA5E-9E78-40C7-B39E-360897D34BC5
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.KeyVault/v0.9.8/Get-AzureKeyVaultSecret.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.KeyVault/v0.9.8/Get-AzureKeyVaultSecret.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.KeyVault/v0.9.8/Get-AzureKeyVaultSecret.md
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

# Get-AzureKeyVaultSecret

## SYNOPSIS
Gets the secrets in a vault.

## SYNTAX

### ByVaultName (Default)
```
Get-AzureKeyVaultSecret [-VaultName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

### BySecretVersions
```
Get-AzureKeyVaultSecret [-VaultName] <String> [-Name] <String> [-IncludeVersions] [-Profile <AzureProfile>]
 [<CommonParameters>]
```

### BySecretName
```
Get-AzureKeyVaultSecret [-VaultName] <String> [-Name] <String> [[-Version] <String>] [-Profile <AzureProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureKeyVaultSecret** cmdlet gets secrets in an Azure Key Vault.
This cmdlet gets a specific secret or all the secrets in a vault.

## EXAMPLES

### Example 1: Get all current versions of all secrets in a vault
```
PS C:\>Get-AzureKeyVaultSecret -VaultName "Contoso"
```

This command gets the current versions of all secrets in the vault named Contoso.

### Example 2: Get all versions of a specific secret
```
PS C:\>Get-AzureKeyVaultSecret -VaultName "Contoso" -Name "ITSecret" -IncludeVersions
```

This command gets all versions of the secret named ITSecret in the vault named Contoso.

### Example 3: Get the current version of a specific secret
```
PS C:\>Get-AzureKeyVaultSecret -VaultName "Contoso" -Name "ITSecret"
```

This command gets the current version of the secret named ITSecret in the vault named Contoso.

### Example 4: Get a specific version of a specific secret
```
PS C:\>Get-AzureKeyVaultSecret -VaultName "Contoso" -Name "ITSecret" -Version "6A12A286385949DB8B5F82AFEF85CAE9"
```

This command gets a specific version of the secret named ITSecret in the vault named Contoso.

## PARAMETERS

### -IncludeVersions
Indicates that this cmdlet gets all versions of a secret.
The current version of a secret is the first one on the list.
If you specify this parameter you must also specify the *Name* and *VaultName* parameters.

If you do not specify the *IncludeVersions* parameter, this cmdlet gets the current version of the secret with the specified *Name*.

```yaml
Type: SwitchParameter
Parameter Sets: BySecretVersions
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies the name of the secret to get.

```yaml
Type: String
Parameter Sets: BySecretVersions, BySecretName
Aliases: SecretName

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
Specifies the name of the vault to which the secret belongs.
This cmdlet constructs the fully qualified domain name (FQDN) of a vault based on the name that this parameter specifies and your current environment.

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
Specifies the secret version.
This cmdlet constructs the FQDN of a secret based on the vault name, your currently selected environment, the secret name, and the secret version.

```yaml
Type: String
Parameter Sets: BySecretName
Aliases: SecretVersion

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

### List<Microsoft.Azure.Commands.KeyVault.Models.Secret>, Microsoft.Azure.Commands.KeyVault.Models.Secret

## NOTES

## RELATED LINKS

[Remove-AzureKeyVaultSecret](xref:ResourceManager/AzureRM.KeyVault/v0.9.8/Remove-AzureKeyVaultSecret.md)

[Set-AzureKeyVaultSecret](xref:ResourceManager/AzureRM.KeyVault/v0.9.8/Set-AzureKeyVaultSecret.md)


