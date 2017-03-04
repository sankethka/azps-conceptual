---
external help file: Microsoft.Azure.Commands.Compute.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: D48B5442-9BA9-4AAD-A402-4D9CC02105DC
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v0.9.8/Add-AzureVMSecret.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v0.9.8/Add-AzureVMSecret.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v0.9.8/Add-AzureVMSecret.md
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

# Add-AzureVMSecret

## SYNOPSIS
Adds a secret to a virtual machine.

## SYNTAX

```
Add-AzureVMSecret [-VM] <PSVirtualMachine> [[-SourceVaultId] <String>] [[-CertificateStore] <String>]
 [[-CertificateUrl] <String>] [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Add-AzureVMSecret** cmdlet adds a secret to a virtual machine.
This value lets you add a certificate to the virtual machine.
The secret needs to be stored in a Key Vault.
For more information about Key Vault, see What is Azure Key Vault?https://azure.microsoft.com/en-us/documentation/articles/key-vault-whatis/ (https://azure.microsoft.com/en-us/documentation/articles/key-vault-whatis/) in the Azure library.
For more information about the cmdlets, see Azure Key Vault Cmdletshttps://msdn.microsoft.com/library/azure/dn868052.aspx (https://msdn.microsoft.com/library/azure/dn868052.aspx) in the Microsoft Developer Network library or type `Get-Help Set-AzureKeyVaultSecret`.

## EXAMPLES

### Example 1: Add a secret to a virtual machine
```
PS C:\>$VirtualMachine = New-AzureVMConfig -VMName "VirtualMachine07" -VMSize "Standard_A1" -AvailabilitySetID $AvailabilitySet.Id 
PS C:\> $Credential = Get-Credential
PS C:\> $VirtualMachine = Set-AzureVMOperatingSystem -VM $VirtualMachine  -Windows -ComputerName "Contoso26" -Credential $Credential
PS C:\> $SourceVaultId = "/subscriptions/46f8cea4-2de6-4179-8ab1-365da4211af4/resourceGroups/vault/providers/Microsoft.KeyVault/vaults/keyvault" 
PS C:\> $CertificateStore01 = "My" 
PS C:\> $CertificateUrl01 = "https://contosovault.vault.azure.net/secrets/514ceb769c984379a7e0230bdd703272" 
PS C:\> $VirtualMachine = Add-AzureVMSecret -VM $VirtualMachine -SourceVaultId $SourceVaultId -CertificateStore $CertificateStore01 -CertificateUrl $CertificateUrl01
```

The first command creates a virtual machine object, and then stores it in the $VirtualMachine variable.
The command assigns a name and size to the virtual machine.

The third command creates a credential object by using the **Get-Credential** cmdlet, and then stores the result in the $Credential variable.
The command prompts you for a user name and password.
For more information, type `Get-Help Get-Credential`.

The fourth command uses the **Set-AzureVMOperatingSystem** cmdlet to configure the virtual machine stored in $VirtualMachine.

The fifth command assigns a source vault ID to the $SourceVaultId variable for later use.
The command assumes that the $SubscriptionId variable has an appropriate value.

The sixth command assigns a value to the $CertificateStore01 variable for later use.

The seventh command assigns a URL for a certificate store.

The eighth command adds a secret to the virtual machine stored in $VirtualMachine.
The *SourceVaultId* parameter specifies the Key Vault.
The command specifies the name of the certificate store and the URL of the certificate.
You can run the **Add-AzureVMSecret** repeatedly to add secrets for other certificates.

## PARAMETERS

### -CertificateStore
Specifies the name of a certificate store on the virtual machine that runs the Windows operating system.
This cmdlet adds the certificate to the store that this parameter specifies.
You can only specify this parameter for virtual machines that run the Windows operating system.

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

### -CertificateUrl
Specifies the URL that points to a Key Vault secret which contains a certificate.

The certificate is the Base64 encoding of the following JavaScript Object Notation (JSON) object, which is encoded in UTF-8.

{
"data": "\<Base64-encoded-file\>",
"dataType": "\<file-format\>",
"password": "\<pfx-file-password\>"
}

Currently, dataType accepts only .pfx files.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
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

### -SourceVaultId
Specifies the resource ID of the Key Vault that contains the certificates that you can add to the virtual machine.
This value also acts as the key for adding multiple certificates.
This means that you can use the same value for *SourceVaultId* when you add multiple certificates from the same Key Vault.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Id

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -VM
Specifies the virtual machine object that this cmdlet modifies.
To obtain a virtual machine object, use the **Get-AzureVM** cmdlet.
Create a virtual machine object by using the **New-AzureVMConfig** cmdlet.

```yaml
Type: PSVirtualMachine
Parameter Sets: (All)
Aliases: VMProfile

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

## NOTES

## RELATED LINKS


