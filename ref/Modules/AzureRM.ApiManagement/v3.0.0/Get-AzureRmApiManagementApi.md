---
external help file: Microsoft.Azure.Commands.ApiManagement.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 0440CC7B-64A7-4D03-9609-8D9ADBE387B6
updated_at: 1/11/2017 8:34 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Get-AzureRmApiManagementApi.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Get-AzureRmApiManagementApi.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/1e1f15e9dfe7a1d13d21733b3111880550e35887/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Get-AzureRmApiManagementApi.md
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

# Get-AzureRmApiManagementApi

## SYNOPSIS
Gets an API.

## SYNTAX

### All APIs (Default)
```
Get-AzureRmApiManagementApi -Context <PsApiManagementContext> [<CommonParameters>]
```

### Find by ID
```
Get-AzureRmApiManagementApi -Context <PsApiManagementContext> -ApiId <String> [<CommonParameters>]
```

### Find by Name
```
Get-AzureRmApiManagementApi -Context <PsApiManagementContext> -Name <String> [<CommonParameters>]
```

### Find by product ID
```
Get-AzureRmApiManagementApi -Context <PsApiManagementContext> -ProductId <String> [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmApiManagementApi** cmdlet gets one or more Azure API Management APIs.

## EXAMPLES

### Example 1: Get all management APIs
```
PS C:\> Get-AzureRmApiManagementApi -Context $ApiMgmtContext
```

This command gets all of the APIs for the specified context.

### Example 2: Get a management API by ID
```
PS C:\> Get-AzureRmApiManagementApi -Context $ApiMgmtContext -ApiId $ApiId
```

This command gets the API with the specified ID.

### Example 3: Get a management API by name
```
PS C:\> Get-AzureRmApiManagementApi -Context $ApiMgmtContext -Name "EchoApi"
```

This command gets the API with the specified name.

## PARAMETERS

### -Context
Specifies a **PsApiManagementContext** object.

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

### -ApiId
Specifies the ID of the API to get.

```yaml
Type: String
Parameter Sets: Find by ID
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of the API to get.

```yaml
Type: String
Parameter Sets: Find by Name
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ProductId
Specifies the ID of the product for which to get the API.

```yaml
Type: String
Parameter Sets: Find by product ID
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

### IList<Microsoft.Azure.Commands.ApiManagement.ServiceManagement.Models.PsApiManagementApi>

## NOTES

## RELATED LINKS

[Export-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Export-AzureRmApiManagementApi.md)

[Import-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Import-AzureRmApiManagementApi.md)

[New-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/New-AzureRmApiManagementApi.md)

[Remove-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Remove-AzureRmApiManagementApi.md)

[Set-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Set-AzureRmApiManagementApi.md)


