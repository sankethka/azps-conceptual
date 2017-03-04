---
external help file: Microsoft.Azure.Commands.ApiManagement.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: DA9D0566-483C-4243-A3AE-9BB521F9F201
updated_at: 1/11/2017 9:45 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Import-AzureRmApiManagementApi.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Import-AzureRmApiManagementApi.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/84ecefa3a481a03bbc48780f89a552511570cb53/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Import-AzureRmApiManagementApi.md
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

# Import-AzureRmApiManagementApi

## SYNOPSIS
Imports an API from a file or a URL.

## SYNTAX

### From Local File (Default)
```
Import-AzureRmApiManagementApi -Context <PsApiManagementContext> [-ApiId <String>]
 -SpecificationFormat <PsApiManagementApiFormat> -SpecificationPath <String> [-Path <String>]
 [-WsdlServiceName <String>] [-WsdlEndpointName <String>] [<CommonParameters>]
```

### From URL
```
Import-AzureRmApiManagementApi -Context <PsApiManagementContext> [-ApiId <String>]
 -SpecificationFormat <PsApiManagementApiFormat> -SpecificationUrl <String> [-Path <String>]
 [-WsdlServiceName <String>] [-WsdlEndpointName <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Import-AzureRmApiManagementApi** cmdlet imports an Azure API Management API from a file or a URL in Web Application Description Language (WADL), Web Services Description Language (WSDL), or Swagger format.

## EXAMPLES

### Example 1 Import an API from a WADL file
```
PS C:\> Import-AzureRmApiManagementApi -Context $ApiMgmtContext -SpecificationFormat "Wadl" -SpecificationPath "C:\contoso\specifications\echoapi.wadl" -Path "apis"
```

This command imports an API from the specified WADL file.

### Example 2 Import an API from a Swagger file
```
PS C:\> Import-AzureRmApiManagementApi -Context $ApiMgmtContext -SpecificationFormat "Swagger" -SpecificationPath "C:\contoso\specifications\echoapi.swagger" -Path "apis"
```

This command imports an API from the specified Swagger file.

### Example 3: Import an API from a WADL link
```
PS C:\> Import-AzureRmApiManagementApi -Context $ApiMgmtContext -SpecificationFormat "Wadl" -SpecificationUrl "http://contoso.com/specifications/wadl/echoapi" -Path "apis"
```

This command imports an API from the specified WADL link.

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
Specifies an ID for the API to import.
If you do not specify this parameter, an ID is generated for you.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SpecificationFormat
Specifies the specification format.
The acceptable values for this parameter are: 
  
- Wadl
- Wsdl
- Swagger

```yaml
Type: PsApiManagementApiFormat
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SpecificationPath
Specifies the specification file path.

```yaml
Type: String
Parameter Sets: From Local File
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Path
Specifies a web API path as the last part of the API's public URL.
This URL is used by API consumers for sending requests to the web service.
Must be 1 to 400 characters long.
The default value is $Null.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SpecificationUrl
Specifies the specification URL.

```yaml
Type: String
Parameter Sets: From URL
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -WsdlServiceName
Specifies the local name of WSDL Service that this cmdlet imports.
Specify this parameter if you specify Wsdl for *SpecificationFormat*.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -WsdlEndpointName
Specifies the local name of WSDL Endpoint, or port, that this cmdlet imports.
Specify this parameter if you specify Wsdl for the *SpecificationFormat* parameter.

```yaml
Type: String
Parameter Sets: (All)
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

### Microsoft.Azure.Commands.ApiManagement.ServiceManagement.Models.PsApiManagementApi
This cmdlet returns the imported API as a **PsApiManagementApi** object.

## NOTES

## RELATED LINKS

[Export-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Export-AzureRmApiManagementApi.md)

[Get-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Get-AzureRmApiManagementApi.md)

[New-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/New-AzureRmApiManagementApi.md)

[Remove-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Remove-AzureRmApiManagementApi.md)

[Set-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Set-AzureRmApiManagementApi.md)
