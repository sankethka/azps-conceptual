---
external help file: Microsoft.Azure.Commands.KeyVault.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 81BAA725-3A0F-43E3-AD5D-784E70BA7710
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.KeyVault/v0.9.8/Get-AzureKeyVault.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.KeyVault/v0.9.8/Get-AzureKeyVault.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.KeyVault/v0.9.8/Get-AzureKeyVault.md
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

# Get-AzureKeyVault

## SYNOPSIS
Gets Azure Key Vault instances.

## SYNTAX

### GetVaultByName
```
Get-AzureKeyVault [-VaultName] <String> [[-ResourceGroupName] <String>] [-Profile <AzureProfile>]
 [<CommonParameters>]
```

### ListVaultsByResourceGroup
```
Get-AzureKeyVault [-ResourceGroupName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

### ListAllVaultsInSubscription
```
Get-AzureKeyVault [-Tag <Hashtable>] [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureKeyVault** cmdlet gets information about the Azure Key Vault instances in a subscription.
You can view all key vault instances in a subscription, or filter your results by a resource group or a particular key vault.

Note that although specifying the resource group is optional for this cmdlet when you get a single key vault, you should do so for better performance.

## EXAMPLES

### Example 1: Get all key vaults in your current subscription
```
PS C:\>Get-AzureKeyVault
```

This command gets all the key vaults in your current subscription.

### Example 2: Get a specific key vault
```
PS C:\>$MyVault = Get-AzureKeyVault -VaultName "Contoso03Vault"
```

This command gets the key vault named Contoso03Vault in your current subscription, and then stores it in the $MyVault variable.
You can inspect the properties of $MyVault to get details about the key vault.

### Example 3: Get key vaults in a resource group
```
PS C:\>Get-AzureKeyVault -ResourceGroupName "ContosoPayRollResourceGroup"
```

This command gets all the key vaults in the resource group named ContosoPayRollResourceGroup.

## PARAMETERS

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

### -ResourceGroupName
Specifies the name of the resource group associated with the key vault or key vaults being queried.

```yaml
Type: String
Parameter Sets: GetVaultByName
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: ListVaultsByResourceGroup
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Tag
Specifies the key and value of the specified tag to filter the list of key vaults by hash table.

```yaml
Type: Hashtable
Parameter Sets: ListAllVaultsInSubscription
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -VaultName
Specifies the name of the key vault.

```yaml
Type: String
Parameter Sets: GetVaultByName
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

### String

## OUTPUTS

### PSVault, List<PSVaultIdentityItem>

## NOTES

## RELATED LINKS

[New-AzureKeyVault](xref:ResourceManager/AzureRM.KeyVault/v0.9.8/New-AzureKeyVault.md)

[Remove-AzureKeyVault](xref:ResourceManager/AzureRM.KeyVault/v0.9.8/Remove-AzureKeyVault.md)


