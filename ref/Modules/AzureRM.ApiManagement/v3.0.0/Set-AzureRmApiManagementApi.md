---
external help file: Microsoft.Azure.Commands.ApiManagement.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: A456A3D4-EF82-40CE-85FE-5D22EA5A305C
updated_at: 1/11/2017 8:34 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Set-AzureRmApiManagementApi.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Set-AzureRmApiManagementApi.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/1e1f15e9dfe7a1d13d21733b3111880550e35887/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Set-AzureRmApiManagementApi.md
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

# Set-AzureRmApiManagementApi

## SYNOPSIS
Modifies an API.

## SYNTAX

```
Set-AzureRmApiManagementApi -Context <PsApiManagementContext> -ApiId <String> -Name <String>
 [-Description <String>] -ServiceUrl <String> [-Path <String>] -Protocols <PsApiManagementSchema[]>
 [-AuthorizationServerId <String>] [-AuthorizationScope <String>] [-SubscriptionKeyHeaderName <String>]
 [-SubscriptionKeyQueryParamName <String>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmApiManagementApi** cmdlet modifies an Azure API Management API.

## EXAMPLES

### Example 1 Modify an API
```
PS C:\> Set-AzureRmApiManagementApi -Context $ApiMgmtContext -Name "EchoApi" -ServiceUrl "https://contoso.com/apis/echo" -Protocols @('https') -Description "Responds with what was sent" -Path "echo"
```

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
Specifies the ID of the API to modify.

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

### -Name
Specifies the name of the web API.

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

### -Description
Specifies a description for the web API.

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

### -ServiceUrl
Specifies the URL of the web service that exposes the API.
This URL is used only by Azure API Management, and is not made public.
The URL must be one to 2000 characters long.

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

### -Path
Specifies the web API path, which is the last part of the API's public URL.
This URL is used by API consumers to send requests to the web service, and must be one to 400 characters long.
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

### -Protocols
Specifies an array of web API protocols.
The acceptable values for this parameter are: http and https.
These are the web protocols over which the API is made available.
The default value is $Null.

```yaml
Type: PsApiManagementSchema[]
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AuthorizationServerId
Specifies the OAuth authorization server identifier.
The default value is $Null.
You must specify this parameter if *AuthorizationScope* is specified.

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

### -AuthorizationScope
Specifies the OAuth operations scope.
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

### -SubscriptionKeyHeaderName
Specifies the name of the subscription key header.
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

### -SubscriptionKeyQueryParamName
Specifies the name of the subscription key query string parameter.
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

### -PassThru
Returns an object representing the item with which you are working.
By default, this cmdlet does not generate any output.

```yaml
Type: SwitchParameter
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

## NOTES

## RELATED LINKS

[Export-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Export-AzureRmApiManagementApi.md)

[Get-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Get-AzureRmApiManagementApi.md)

[Import-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Import-AzureRmApiManagementApi.md)

[New-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/New-AzureRmApiManagementApi.md)

[Remove-AzureRmApiManagementApi](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Remove-AzureRmApiManagementApi.md)


