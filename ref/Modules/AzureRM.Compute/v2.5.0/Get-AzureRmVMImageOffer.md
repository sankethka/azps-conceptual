---
external help file: Microsoft.Azure.Commands.Compute.dll-Help.xml
ms.assetid: D2CCAEB4-E43E-4075-9436-77F2C4FE9463
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.5.0/Get-AzureRmVMImageOffer.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.5.0/Get-AzureRmVMImageOffer.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.5.0/Get-AzureRmVMImageOffer.md
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

# Get-AzureRmVMImageOffer

## SYNOPSIS
Gets VMImage offer types.

## SYNTAX

```
Get-AzureRmVMImageOffer -Location <String> -PublisherName <String> [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmVMImageOffer** cmdlet gets the VMImage offer types.

## EXAMPLES

### Example 1: Get offer types for a publisher
```
PS C:\>Get-AzureRmVMImageOffer -Location "Central US" -PublisherName "Fabrikam"
```

This command gets the offer types for the specified publisher in the Central US region.

## PARAMETERS

### -Location
Specifies the location of the VMImage.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PublisherName
Specifies the name of a publisher of a VMImage.
To obtain a publisher, use the Get-AzureRmVMImagePublisher cmdlet.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureRmVMImage](xref:ResourceManager/AzureRM.Compute/v2.5.0/Get-AzureRmVMImage.md)

[Get-AzureRmVMImagePublisher](xref:ResourceManager/AzureRM.Compute/v2.5.0/Get-AzureRmVMImagePublisher.md)

[Get-AzureRmVMImageSku](xref:ResourceManager/AzureRM.Compute/v2.5.0/Get-AzureRmVMImageSku.md)

[Save-AzureRmVMImage](xref:ResourceManager/AzureRM.Compute/v2.5.0/Save-AzureRmVMImage.md)


