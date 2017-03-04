---
external help file: Microsoft.Azure.Commands.Compute.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: AC133499-419D-400C-B7AC-1896AF4FD4EC
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.2.0/Add-AzureRmVmssSecret.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.2.0/Add-AzureRmVmssSecret.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.2.0/Add-AzureRmVmssSecret.md
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

# Add-AzureRmVmssSecret

## SYNOPSIS
Adds a secret to a VMSS.

## SYNTAX

```
Add-AzureRmVmssSecret [-VirtualMachineScaleSet] <VirtualMachineScaleSet> [[-SourceVaultId] <String>]
 [[-VaultCertificate] <VaultCertificate[]>] [<CommonParameters>]
```

## DESCRIPTION
The **Add-AzureRmVmssSecret** cmdlet adds a secret to the Virtual Machine Scale Set (VMSS).
The secret must be stored in an Azure Key Vault.
For more information relating to Key Vault, see What is Azure Key Vault?https://azure.microsoft.com/en-us/documentation/articles/key-vault-whatis/ (https://azure.microsoft.com/en-us/documentation/articles/key-vault-whatis/).
For more information about the cmdlets, see Azure Key Vault Cmdletshttps://msdn.microsoft.com/library/azure/dn868052.aspx(https://msdn.microsoft.com/library/azure/dn868052.aspx) in the Microsoft Developer Network library or the Set-AzureKeyVaultSecret cmdlet.

## EXAMPLES

### Example 1: Add a secret to the VMSS
```
PS C:\>$Vault = Get-AzureRmKeyVault -VaultName "ContosoVault"
PS C:\> $CertConfig = New-AzureRmVmssVaultCertificateConfig -CertificateUrl "http://keyVaultName.vault.contoso.net/secrets/secretName/secretVersion" -CertificateStore "Certificates"
PS C:\> $VMSS = New-AzureRmVmssConfig
PS C:\> Add-AzureRmVmssSecret -VirtualMachineScaleSet $VMSS -SourceVaultId $Vault.ResourceId -VaultCertificate $CertConfig
```

This example adds a secret to the VMSS.
The first command uses the Get-AzureRmKeyVault cmdlet to get a vault secret from the vault named ContosoVault and stores the result in the variable named $Vault.
The second command uses the **New-AzureRmVmssVaultCertificateConfig** cmdlet to create a Key Vault certificate configuration using the specified certificate URL from the certificate store named Certificates and stores the results in the variable named $CertConfig.
The third command uses the **New-AzureRmVmssConfig** cmdlet to create a VMSS configuration object and stores the result in the variable named $VMSS.
The fourth command adds a secret to the VMSS using the vault secret using the key resource ID and the vault certificate stored in the $Vault and $CertConfig variables.

## PARAMETERS

### -SourceVaultId
Specifies the resource ID of the Key Vault that contains the certificates that you can add to the virtual machine.
This value also acts as the key for adding multiple certificates.
This means that you can use the same value for the *SourceVaultId* parameter when you add multiple certificates from the same Key Vault.

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

### -VaultCertificate
Specifies the Vault **Certificate** object that contains the certificate URL and certificate name.
You can use the New-AzureRmVmssVaultCertificateConfig cmdlet to create this object.

```yaml
Type: VaultCertificate[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -VirtualMachineScaleSet
Specifies the VMSS object.
You can use the New-AzureRmVmssConfig cmdlet to create this object.

```yaml
Type: VirtualMachineScaleSet
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

###  
This cmdlet does not generate any output.

## NOTES

## RELATED LINKS

[New-AzureRmVmssVaultCertificateConfig](xref:ResourceManager/AzureRM.Compute/v2.2.0/New-AzureRmVmssVaultCertificateConfig.md)

[New-AzureRmVmssConfig](xref:ResourceManager/AzureRM.Compute/v2.2.0/New-AzureRmVmssConfig.md)


