---
external help file: Microsoft.Azure.Commands.ApiManagement.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 476774C2-7755-4FE8-933E-DFF502DEBADF
updated_at: 1/12/2017 9:16 PM
ms.date: 1/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v2.1.0/Get-AzureRmApiManagementAuthorizationServer.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v2.1.0/Get-AzureRmApiManagementAuthorizationServer.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/50790d1af04223a6b49b2f8ea249bae92b42c95d/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v2.1.0/Get-AzureRmApiManagementAuthorizationServer.md
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

# Get-AzureRmApiManagementAuthorizationServer

## SYNOPSIS
Gets an API Management authorization server.

## SYNTAX

### Get all authorization server (Default)
```
Get-AzureRmApiManagementAuthorizationServer -Context <PsApiManagementContext>
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### Get by Id
```
Get-AzureRmApiManagementAuthorizationServer -Context <PsApiManagementContext> [-ServerId <String>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmApiManagementAuthorizationServer** cmdlet gets all Azure API Management authorization servers or specified authorization servers.

## EXAMPLES

### Example 1: Get all authorization servers
```
PS C:\> Get-AzureRmApiManagementAuthrizarionServer -Context $ApiMgmtContext
```

This command gets all API Management authorization servers.

### Example 2: Get a specified authorization server
```
PS C:\> Get-AzureRmApiManagementCertificate -Context $ApiMgmtContext -ServerId "0123456789"
```

This command gets the specified authorization server.

## PARAMETERS

### -Context

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

### -ServerId
Specifies the ID of the authorization server that this cmdlet gets.

```yaml
Type: String
Parameter Sets: Get by Id
Aliases: 

Required: False
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### IList<Microsoft.Azure.Commands.ApiManagement.ServiceManagement.Models.PsApiManagementOAuth2AuthrozationServer>

## NOTES

## RELATED LINKS

[New-AzureRmApiManagementAuthorizationServer](xref:ResourceManager/AzureRM.ApiManagement/v2.1.0/New-AzureRmApiManagementAuthorizationServer.md)

[Remove-AzureRmApiManagementAuthorizationServer](xref:ResourceManager/AzureRM.ApiManagement/v2.1.0/Remove-AzureRmApiManagementAuthorizationServer.md)

[Set-AzureRmApiManagementAuthorizationServer](xref:ResourceManager/AzureRM.ApiManagement/v2.1.0/Set-AzureRmApiManagementAuthorizationServer.md)
