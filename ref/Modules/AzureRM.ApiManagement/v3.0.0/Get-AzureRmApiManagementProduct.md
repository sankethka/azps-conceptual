---
external help file: Microsoft.Azure.Commands.ApiManagement.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: FBA7B49F-E01A-4DCF-8930-C302B09861DE
updated_at: 1/11/2017 8:34 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Get-AzureRmApiManagementProduct.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Get-AzureRmApiManagementProduct.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/1e1f15e9dfe7a1d13d21733b3111880550e35887/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Get-AzureRmApiManagementProduct.md
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

# Get-AzureRmApiManagementProduct

## SYNOPSIS
Gets a list or a particular product.

## SYNTAX

### Get all producst (Default)
```
Get-AzureRmApiManagementProduct -Context <PsApiManagementContext> [<CommonParameters>]
```

### Get by Id
```
Get-AzureRmApiManagementProduct -Context <PsApiManagementContext> -ProductId <String> [<CommonParameters>]
```

### Get by Title
```
Get-AzureRmApiManagementProduct -Context <PsApiManagementContext> [-Title <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmApiManagementProduct** cmdlet gets a list or a particular product.

## EXAMPLES

### Example 1: Get all products
```
PS C:\> Get-AzureRmApiManagementProduct -Context $APImContext
```

This command get all API Management products.

### Example 2: Get a product by ID
```
PS C:\> Get-AzureRmApiManagementProduct -Context $APImContext -ProductId "0123456789"
```

This command get an API Management product by ID.

## PARAMETERS

### -Context
Specifies an instance of a **PsApiManagementContext** object.

```yaml
Type: PsApiManagementContext
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ProductId
Specifies the identifier of the product to search for.

```yaml
Type: String
Parameter Sets: Get by Id
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Title
Specifies the title of the product to look for.
If specified, the cmdlet attempts to get the product by title.

```yaml
Type: String
Parameter Sets: Get by Title
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

## OUTPUTS

### IList<Microsoft.Azure.Commands.ApiManagement.ServiceManagement.Models.PsApiManagementProduct>

## NOTES

## RELATED LINKS

[New-AzureRmApiManagementProduct](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/New-AzureRmApiManagementProduct.md)

[Remove-AzureRmApiManagementProduct](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Remove-AzureRmApiManagementProduct.md)

[Set-AzureRmApiManagementProduct](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Set-AzureRmApiManagementProduct.md)


