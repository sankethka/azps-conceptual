---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: A354BF21-A6F2-47E2-9671-221047205FFC
updated_at: 1/11/2017 6:32 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Remove-AzureVMImage.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Remove-AzureVMImage.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/34e1c9880d0370f1dd5f83ea8d5ee7f59cb5e559/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Remove-AzureVMImage.md
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

# Remove-AzureVMImage

## SYNOPSIS
Removes an operating system image from the image repository.

## SYNTAX

```
Remove-AzureVMImage [-ImageName] <String> [-DeleteVHD] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureVMImage** cmdlet removes an operating system image from the image repository.
By default, this cmdlet does not delete the associated physical image blob from the storage account.
To delete the associated virtual hard drive (VHD), use the **DeleteVHD** parameter.

## EXAMPLES

### Example 1: Remove an image from the image repository
```
PS C:\> Remove-AzureVMImage -ImageName "Image001"
```

This command removes the image named Image001 from the image repository.

### Example 2: Remove an image from the image repository and also the VHD
```
PS C:\> Remove-AzureVMImage -ImageName " Image001" -DeleteVHD
```

This command removes the image named Image001 from the image repository and also deletes the physical VHD image from the storage account.

### Example 3: Set a subscription context and then remove all the images
```
PS C:\> $SubsId = &amp;lt;MySubscriptionID&amp;gt;
PS C:\> $Cert = Get-AzureCertificate cert:\LocalMachine\MY\&amp;lt;CertificateThumbprint&amp;gt;
PS C:\> Get-AzureVMImage `
| Where-Object {$_.Label -match "Beta" }`
| Foreach-Object {Remove-AzureVMImage -ImageName $_.name }
```

This command sets the subscription context and then removes all the images from the image repository whose Label includes the name Beta.

## PARAMETERS

### -ImageName
Specifies the operating system or virtual machine image to remove from the image repository.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DeleteVHD
Indicates that this cmdlet deletes the physical VHD image blob from the storage account.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

```yaml
Type: AzureSMProfile
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
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

[Add-AzureVMImage](xref:ServiceManagement/Azure.Service/v3.0.0/Add-AzureVMImage.md)

[Get-AzureVMImage](xref:ServiceManagement/Azure.Service/v3.0.0/Get-AzureVMImage.md)

[Save-AzureVMImage](xref:ServiceManagement/Azure.Service/v3.0.0/Save-AzureVMImage.md)

[Update-AzureVMImage](xref:ServiceManagement/Azure.Service/v3.0.0/Update-AzureVMImage.md)


