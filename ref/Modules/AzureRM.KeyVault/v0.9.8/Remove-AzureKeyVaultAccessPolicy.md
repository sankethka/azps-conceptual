---
external help file: Microsoft.Azure.Commands.KeyVault.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: B5817753-CC23-43D8-A494-174496CA45E5
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.KeyVault/v0.9.8/Remove-AzureKeyVaultAccessPolicy.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.KeyVault/v0.9.8/Remove-AzureKeyVaultAccessPolicy.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.KeyVault/v0.9.8/Remove-AzureKeyVaultAccessPolicy.md
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

# Remove-AzureKeyVaultAccessPolicy

## SYNOPSIS
Removes all permissions for a user or application from the Azure Key Vault.

## SYNTAX

### ByServicePrincipalName
```
Remove-AzureKeyVaultAccessPolicy [-VaultName] <String> [[-ResourceGroupName] <String>]
 -ServicePrincipalName <String> [-EnabledForDeployment] [-PassThru] [-Profile <AzureProfile>]
 [<CommonParameters>]
```

### ByUserPrincipalName
```
Remove-AzureKeyVaultAccessPolicy [-VaultName] <String> [[-ResourceGroupName] <String>]
 -UserPrincipalName <String> [-EnabledForDeployment] [-PassThru] [-Profile <AzureProfile>] [<CommonParameters>]
```

### ByObjectId
```
Remove-AzureKeyVaultAccessPolicy [-VaultName] <String> [[-ResourceGroupName] <String>] -ObjectId <Guid>
 [-ApplicationId <Guid>] [-EnabledForDeployment] [-PassThru] [-Profile <AzureProfile>] [<CommonParameters>]
```

### None
```
Remove-AzureKeyVaultAccessPolicy [-VaultName] <String> [[-ResourceGroupName] <String>] [-EnabledForDeployment]
 [-PassThru] [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureKeyVaultAccessPolicy** cmdlet removes all permissions for a user or application or for all users and applications from the Azure Key Vault.
Even if you remove all permissions, the owner of the Azure subscription that contains the vault can add permissions to the key vault.

Note that although specifying the resource group is optional for this cmdlet, you should do so for better performance.

## EXAMPLES

### Example 1: Remove permissions for a user
```
PS C:\>Remove-AzureKeyVaultAccessPolicy -VaultName "Contoso03Vault" -UserPrincipalName "PattiFuller@contoso.com"
```

This command removes all the permissions that a user PattiFuller@contoso.com has on the key vault named Contoso03Vault.

### Example 2: Remove permissions for an application
```
PS C:\>Remove-AzureKeyVaultAccessPolicy -VaultName "Contoso03Vault" -ServicePrincipalName "http://payroll.contoso.com"
```

This command removes all the permissions that an application has on the vault named Contoso03Vault.
This example identifies the application by using the service principal name registered in Azure Active Directory, http://payroll.contoso.com.

### Example 3: Remove permissions for an application by using its object ID
```
PS C:\>Remove-AzureKeyVaultAccessPolicy -VaultName "Contoso03Vault" -ObjectID 34595082-9346-41b6-8d6b-295a2808b8db
```

This command removes all the permissions that an application has on the vault named Contoso03Vault.
This example identifies the application by the object ID of the service principal.

## PARAMETERS

### -EnabledForDeployment
Enables the Microsoft.Compute resource provider to retrieve secrets from this key vault when this key vault is referenced in resource creation, for example when creating a virtual machine.

```yaml
Type: SwitchParameter
Parameter Sets: ByServicePrincipalName, ByUserPrincipalName, ByObjectId
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

```yaml
Type: SwitchParameter
Parameter Sets: None
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ObjectId
Specifies the object ID of the user or service principal in Azure Active Directory for which to remove permissions.

```yaml
Type: Guid
Parameter Sets: ByObjectId
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PassThru
Returns an object representing the item with which you are working.
By default, this cmdlet does not generate any output.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
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

### -ResourceGroupName
Specifies the name of the resource group associated with the key vault whose access policy is being modified.
If not specified, this cmdlet searches for the key vault in the current subscription.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ServicePrincipalName
Specifies the service principal name of the application whose permissions you want to remove.
Specify the application ID, also known as client ID, registered for the application in Azure Active Directory.

```yaml
Type: String
Parameter Sets: ByServicePrincipalName
Aliases: SPN

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserPrincipalName
Specifies the user principal name of the user whose access you want to remove.

```yaml
Type: String
Parameter Sets: ByUserPrincipalName
Aliases: UPN

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -VaultName
Specifies the name of the key vault.
This cmdlet removes permissions for the key vault that this parameter specifies.

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

### -ApplicationId
Specifies the ID of application that a user must.

```yaml
Type: Guid
Parameter Sets: ByObjectId
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### String, Guid

## OUTPUTS

### Microsoft.Azure.Commands.KeyVault.Models.PSVault

## NOTES

## RELATED LINKS

[Set-AzureKeyVaultAccessPolicy](xref:ResourceManager/AzureRM.KeyVault/v0.9.8/Set-AzureKeyVaultAccessPolicy.md)


