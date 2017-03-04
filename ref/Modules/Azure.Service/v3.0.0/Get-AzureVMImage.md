---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 2023C378-CC51-4DE6-BAC6-3999FBEC378C
updated_at: 1/11/2017 6:32 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Get-AzureVMImage.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Get-AzureVMImage.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/34e1c9880d0370f1dd5f83ea8d5ee7f59cb5e559/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Get-AzureVMImage.md
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

# Get-AzureVMImage

## SYNOPSIS
Gets the properties on one or a list of operating systems or a virtual machine image in the image repository.

## SYNTAX

```
Get-AzureVMImage [[-ImageName] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureVMImage** cmdlet gets properties on one or a list of operating systems or a virtual machine image in the image repository.
The cmdlet returns information for all images in the repository, or about a specific image if its image name is provided.

## EXAMPLES

### Example 1: Get a specific image object from the current image repository.
```
PS C:\> Get-AzureVMImage -ImageName Image001
```

This command gets the image object named Image001 from the current image repository.

### Example 2: Get all images from the current image repository
```
PS C:\> Get-AzureVMImage
```

This command retrieves all the images from the current image repository.

### Example 3: Set the subscription context and then get all the images
```
PS C:\> $SubsId = <MySubscriptionID>
C:\PS>$Cert = Get-AzureCertificate cert:\LocalMachine\MY\<CertificateThumbprint>
C:\PS>$MyOSImages = Get-AzureVMImage
```

This command sets the subscription context and then retrieves all the images from the image repository.

## PARAMETERS

### -ImageName
Specifies the name of the operating system or virtual machine image in the image repository.
If you do not specify this parameter, all the images are returned.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
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

[Remove-AzureVMImage](xref:ServiceManagement/Azure.Service/v3.0.0/Remove-AzureVMImage.md)

[Save-AzureVMImage](xref:ServiceManagement/Azure.Service/v3.0.0/Save-AzureVMImage.md)

[Update-AzureVMImage](xref:ServiceManagement/Azure.Service/v3.0.0/Update-AzureVMImage.md)


