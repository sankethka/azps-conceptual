---
external help file: Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll-Help.xml
online version: https://go.microsoft.com/fwlink/?LinkId=799850
schema: 2.0.0
ms.assetid: 58EEEE8D-9C0E-4879-8F04-3F56589B1238
updated_at: 2/12/2017 9:57 PM
ms.date: 2/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Convert-AadrmKeyToKeyVault.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Convert-AadrmKeyToKeyVault.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/e4c765ba645ee6c466dd1ff7182695aa9e59fb44/Azure%20Information%20Protection/AADRM/vlatest/Convert-AadrmKeyToKeyVault.md
ms.topic: reference
ms.prod: powershell
ms.technology: Azure Powershell
author: cabailey
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: cabailey
open_to_public_contributors: False
ms.service: rights-management
---

# Convert-AadrmKeyToKeyVault

## SYNOPSIS
Changes the location of a legacy customer-managed key in Azure Rights Management with the location of a customer-managed key in Azure Key Vault.

## SYNTAX

```
Convert-AadrmKeyToKeyVault -KeyVaultKeyUrl <String> -KeyIdentifier <String> [-Force] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The **Convert-AadrmKeyToKeyVault** cmdlet is only for customers who have previously created a customer-managed key for the Azure Rights Management service and have received an invitation from AskIPteam at Microsoft to migrate their Azure Rights Management tenant key to Azure Key Vault.

Do not run this cmdlet without assistance from Microsoft.

You must use PowerShell to configure your tenant key; you cannot do this configuration by using a management portal.

Azure RMS now uses Azure Key Vault to manage and monitor a customer-managed Azure RMS tenant key. To create a customer-managed Azure RMS tenant key for the first time, run [Use-AadrmKeyVaultKey](./Use-AadrmKeyVaultKey.md) instead of this cmdlet.

For more information about how to manage your Azure RMS tenant key, see [Planning and implementing your Azure Rights Management tenant key](https://docs.microsoft.com/en-us/rights-management/plan-design/plan-implement-tenant-key) (https://docs.microsoft.com/en-us/rights-management/plan-design/plan-implement-tenant-key) on the Microsoft documentation site.

Before you run this cmdlet, you will need to identify your original customer-managed Azure RMS tenant key.
To do that, use the [Get-AadrmKeys](./Get-AadrmKeys.md) cmdlet. From the output and identified key, you will need the KeyIdentifier value for the *KeyIdentifier* parameter when you run this cmdlet.

Also, your organization's administrator for Azure Key Vault must create a new key for Azure RMS and supply you with a URL for this key. You will need to specify the URL for the *KeyVaultKeyUrl* parameter when you run this cmdlet. This Azure Key Vault administrator must also grant Azure RMS access to the key vault that contains the key.

For security reasons, this cmdlet does not let you change the access control for the key; this must be done from Key Vault.

## EXAMPLES

### Example 1: Change the location of a legacy Azure RMS tenant key with a key in Azure Key Vault
```
PS C:\>Convert-AadrmKeyToKeyVault -KeyIdentifier aaaaaaaa-1111-2222-3333-bbbbbbbbbbbb -KeyVaultKeyUrl "https://contoso.vault.azure.net/keys/contoso-rms-key/aaaabbbbcccc111122223333"
```

Changes the location of the original customer-managed key in Azure RMS that has the key identifier of aaaaaaaa-1111-2222-3333-bbbbbbbbbbbb with the location of a customer-managed key in Azure Key Vault, which is named contoso-rms-key and has the version number aaaabbbbcccc111122223333 in the Contoso key vault.

## PARAMETERS

### -Force
Forces the command to run without asking for user confirmation.

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

### -KeyIdentifier
Specifies the key identifier value of the original customer-managed Azure RMS tenant key that you now want to manage from Azure Key Vault.

To get the key identifier value, use the **Get-AadrmKeys** cmdlet.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -KeyVaultKeyUrl
Specifies the URL of the key in Azure Key Vault that you want to use for the Azure RMS tenant key. This key will be used in Azure RMS as the root key for all cryptographic operations for your Azure RMS tenant.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
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
Shows what would happen if the cmdlet runs. The cmdlet is not run.

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

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AadrmKeys](xref:AADRM/vlatest/Get-AadrmKeys.md)

[Use-AadrmKeyVaultKey](xref:AADRM/vlatest/Use-AadrmKeyVaultKey.md)

[Planning and implementing your Azure Rights Management tenant key](https://docs.microsoft.com/en-us/rights-management/plan-design/plan-implement-tenant-key)
