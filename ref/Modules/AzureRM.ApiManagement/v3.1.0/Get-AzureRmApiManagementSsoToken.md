---
external help file: Microsoft.Azure.Commands.ApiManagement.dll-Help.xml
ms.assetid: A7CABC63-2E9C-474B-A4F0-69F13A16F65A
online version: 
schema: 2.0.0
updated_at: 1/11/2017 8:44 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.1.0/Get-AzureRmApiManagementSsoToken.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.1.0/Get-AzureRmApiManagementSsoToken.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/6e6a0656340eb7c14dba7902e574fdb3e8917955/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.1.0/Get-AzureRmApiManagementSsoToken.md
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

# Get-AzureRmApiManagementSsoToken

## SYNOPSIS
Gets a link with an SSO token to a deployed management portal of an API Management service.

## SYNTAX

```
Get-AzureRmApiManagementSsoToken -ResourceGroupName <String> -Name <String>
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmApiManagementSsoToken** cmdlet returns a link (URL) containing a single sign-on (SSO) token to a deployed management portal of an API Management service.

## EXAMPLES

### Example 1: Get the SSO token of an API Management service
```
PS C:\> Get-AzureRmApiManagementSsoToken -ResourceGroupName "Contoso" -Name "ContosoApi"
```

This command gets the SSO token of an API Management service.

## PARAMETERS

### -ResourceGroupName
Specifies the name of resource group under which API Management exists.

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
Specifies the name of the API Management instance.

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

## NOTES

## RELATED LINKS

[Get-AzureRmApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v3.1.0/Get-AzureRmApiManagement.md)
