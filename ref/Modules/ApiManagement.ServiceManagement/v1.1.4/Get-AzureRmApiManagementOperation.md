---
external help file: Microsoft.Azure.Commands.ApiManagement.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: D5EB9AFA-B56C-45E2-838B-4555ED1EF8F8
updated_at: 11/3/2016 10:58 PM
ms.date: 11/3/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/ApiManagement.ServiceManagement/v1.1.4/Get-AzureRmApiManagementOperation.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/ApiManagement.ServiceManagement/v1.1.4/Get-AzureRmApiManagementOperation.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/b0dc3fda3721a600f2fff31599b45845d71f44f4/azureps-cmdlets-docs/ResourceManager/ApiManagement.ServiceManagement/v1.1.4/Get-AzureRmApiManagementOperation.md
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

# Get-AzureRmApiManagementOperation

## SYNOPSIS
Gets a list or a specified API Operation.

## SYNTAX

### All API Operations (Default)
```
Get-AzureRmApiManagementOperation -Context <PsApiManagementContext> -ApiId <String>
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### Find by ID
```
Get-AzureRmApiManagementOperation -Context <PsApiManagementContext> -ApiId <String> -OperationId <String>
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmApiManagementOperation** gets a list or a specified API Operation.

## EXAMPLES

### Example 1: Get all API management operations
```
PS C:\>Get-AzureRmApiManagementOperation -Context $APImContext -ApiId $APIId
```

This command gets all API management operations.

### Example 2: Get an API Management operation by operation ID
```
PS C:\>Get-AzureRmApiManagementOperation -Context $APImContext -ApiId $APIId -OperationId "Operation003"
```

This command gets an API management operation by operation ID named Operation0003.

## PARAMETERS

### -Context
Specifies the instance of the **PsApiManagementContext** object.

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
Specifies the identifier of the API Operation.

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

### -OperationId
Specifies the operation identifier.

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

### IList<Microsoft.Azure.Commands.ApiManagement.ServiceManagement.Models.PsApiManagementOperation>

## NOTES

## RELATED LINKS

[New-AzureRmApiManagementOperation](xref:ResourceManager/ApiManagement.ServiceManagement/v1.1.4/New-AzureRmApiManagementOperation.md)

[Remove-AzureRmApiManagementOperation](xref:ResourceManager/ApiManagement.ServiceManagement/v1.1.4/Remove-AzureRmApiManagementOperation.md)

[Set-AzureRmApiManagementOperation](xref:ResourceManager/ApiManagement.ServiceManagement/v1.1.4/Set-AzureRmApiManagementOperation.md)


