---
external help file: Microsoft.Azure.Commands.Compute.dll-Help.xml
ms.assetid: D2BBAC5B-A7B9-44DA-BE37-24D89E03BAB3
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.4.0/Get-AzureRmVMImageSku.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.4.0/Get-AzureRmVMImageSku.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.4.0/Get-AzureRmVMImageSku.md
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

# Get-AzureRmVMImageSku

## SYNOPSIS
Gets VMImage SKUs.

## SYNTAX

```
Get-AzureRmVMImageSku -Location <String> -PublisherName <String> -Offer <String> [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmVMImageSku** cmdlet gets VMImage SKUs.

## EXAMPLES

### Example 1: Get VMImage SKUs
```
PS C:\>Get-AzureRmVMImageSku -Location "Central US" -PublisherName "Fabrikam" -Offer "LinuxServer"
```

This command gets the SKUs for the specified publisher and offer.

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

### -Offer
Specifies the type of VMImage offer.

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
Specifies the publisher of a VMImage.

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

[Get-AzureRmVMImage](xref:ResourceManager/AzureRM.Compute/v2.4.0/Get-AzureRmVMImage.md)

[Get-AzureRmVMImageOffer](xref:ResourceManager/AzureRM.Compute/v2.4.0/Get-AzureRmVMImageOffer.md)

[Get-AzureRmVMImagePublisher](xref:ResourceManager/AzureRM.Compute/v2.4.0/Get-AzureRmVMImagePublisher.md)

[Save-AzureRmVMImage](xref:ResourceManager/AzureRM.Compute/v2.4.0/Save-AzureRmVMImage.md)


