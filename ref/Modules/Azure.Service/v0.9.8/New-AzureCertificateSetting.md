---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 8B1546BC-2E59-47F2-BE0E-64F870574DD9
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/New-AzureCertificateSetting.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/New-AzureCertificateSetting.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/New-AzureCertificateSetting.md
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

# New-AzureCertificateSetting

## SYNOPSIS
Creates a certificate setting object for a certificate is in a service.

## SYNTAX

```
New-AzureCertificateSetting [[-StoreName] <String>] [-Thumbprint] <String> [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureCertificateSetting** cmdlet creates a certificate setting object for a certificate that is in an Azure service.

You can use a certificate setting object to create a configuration object by using the Add-AzureProvisioningConfig cmdlet.
Use a configuration object to create virtual machine by using the New-AzureVM cmdlet.
You can use a certificate setting object to create a virtual machine by using the New-AzureQuickVM cmdlet.

## EXAMPLES

### Example 1: Create a certificate setting object
```
PS C:\>New-AzureCertificateSetting -Thumbprint "D7BECD4D63EBAF86023BB41FA5FBF5C2C924902A" -StoreName "My"
```

This command creates a certificate setting object for an existing certificate.

### Example 2: Create a virtual machine that uses a configuration setting object
```
PS C:\>Add-AzureCertificate -ServiceName "ContosoService" -CertToDeploy "C:\temp\ContosoCert.cer"
PS C:\> $CertificateSetting = New-AzureCertificateSetting -Thumbprint "D7BECD4D63EBAF86023BB41FA5FBF5C2C924902A" -StoreName "My" 
PS C:\> $Image = Get-AzureVMImage -ImageName "ContosoStandard"
PS C:\> New-AzureVMConfig -Name "VirtualMachine17" -InstanceSize Small -ImageName $Image | Add-AzureProvisioningConfig -Windows -Certificates $CertificateSetting -Password "password" | New-AzureVM -ServiceName "ContosoService"
```

The first command adds the certificate ContosoCert.cer to the service named ContosoService by using the Add-AzureCertificate cmdlet.

The second command creates a certificate setting object, and then stores it in the $CertificateSetting variable.

The third command gets an image from the image repository by using the Get-AzureVMImage cmdlet.
This command store the image in the $Image variable.

The final command creates a virtual machine configuration object based on the image in $Image by using the New-AzureVMConfig cmdlet.
The command passes that object to the **Add-AzureProvisioningConfig** cmdlet by using the pipeline operator.
That cmdlet add provisioning information to the configuration.
The command passes the object to the **New-AzureVM** cmdlet, which creates the virtual machine.

## PARAMETERS

### -StoreName
Specifies the certificate store in which to put the certificate.
Valid values are: 

- AddressBook
- AuthRoot
- CertificateAuthority
- Disallowed
- My
- Root
- TrustedPeople
- TrustedPublisher

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Thumbprint
Specifies the thumbprint of the certificate.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AzureCertificate](xref:ServiceManagement/Azure.Service/v0.9.8/Add-AzureCertificate.md)

[Add-AzureProvisioningConfig](xref:ServiceManagement/Azure.Service/v0.9.8/Add-AzureProvisioningConfig.md)

[Get-AzureCertificate](xref:ServiceManagement/Azure.Service/v0.9.8/Get-AzureCertificate.md)

[Get-AzureVMImage](xref:ServiceManagement/Azure.Service/v0.9.8/Get-AzureVMImage.md)

[New-AzureQuickVM](xref:ServiceManagement/Azure.Service/v0.9.8/New-AzureQuickVM.md)

[New-AzureVM](xref:ServiceManagement/Azure.Service/v0.9.8/New-AzureVM.md)

[Remove-AzureCertificate](xref:ServiceManagement/Azure.Service/v0.9.8/Remove-AzureCertificate.md)


