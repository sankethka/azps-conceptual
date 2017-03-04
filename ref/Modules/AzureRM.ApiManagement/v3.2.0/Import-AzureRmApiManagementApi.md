---
external help file: Microsoft.Azure.Commands.ApiManagement.ServiceManagement.dll-Help.xml
ms.assetid: 9A97726A-1C8C-47AD-A265-926E20DD5560
online version: 
schema: 2.0.0
updated_at: 1/17/2017 4:08 PM
ms.date: 1/17/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.2.0/Import-AzureRmApiManagementApi.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.2.0/Import-AzureRmApiManagementApi.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/32750002412618caa85d2a9ed69a8c106cbe2257/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.2.0/Import-AzureRmApiManagementApi.md
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
 [-WsdlServiceName <String>] [-WsdlEndpointName <String>] [-ApiType <PsApiManagementApiType>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### From URL
```
Import-AzureRmApiManagementApi -Context <PsApiManagementContext> [-ApiId <String>]
 -SpecificationFormat <PsApiManagementApiFormat> -SpecificationUrl <String> [-Path <String>]
 [-WsdlServiceName <String>] [-WsdlEndpointName <String>] [-ApiType <PsApiManagementApiType>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
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

### -ApiType
This parameter is optional with a default value of Http. The Soap option is only applicable when importing WSDL and will create a SOAP Passthrough API.

```yaml
Type: PsApiManagementApiType
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: Http
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

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

### -InformationAction
Specifies how this cmdlet responds to an information event.

The acceptable values for this parameter are:

- Continue
- Ignore
- Inquire
- SilentlyContinue
- Stop
- Suspend

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: infa

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InformationVariable
Specifies an information variable.

```yaml
Type: String
Parameter Sets: (All)
Aliases: iv

Required: False
Position: Named
Default value: None
Accept pipeline input: False
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

### -WsdlServiceName
Specifies the local name of WSDL Service that this cmdlet imports.
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

[Export-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.2.0/Export-AzureRmApiManagementApi.md)

[Get-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.2.0/Get-AzureRmApiManagementApi.md)

[New-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.2.0/New-AzureRmApiManagementApi.md)

[Remove-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.2.0/Remove-AzureRmApiManagementApi.md)

[Set-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.2.0/Set-AzureRmApiManagementApi.md)
