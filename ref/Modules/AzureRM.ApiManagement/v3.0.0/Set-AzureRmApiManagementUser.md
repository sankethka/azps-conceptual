---
external help file: Microsoft.Azure.Commands.ApiManagement.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 6930252E-DDE6-46FD-90D0-16AF62B036F6
updated_at: 1/11/2017 10:40 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Set-AzureRmApiManagementUser.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Set-AzureRmApiManagementUser.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/053af8004c353b7e798073894cdf70355549517b/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Set-AzureRmApiManagementUser.md
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

# Set-AzureRmApiManagementUser

## SYNOPSIS
Sets user details.

## SYNTAX

```
Set-AzureRmApiManagementUser -Context <PsApiManagementContext> -UserId <String> [-FirstName <String>]
 [-LastName <String>] [-Email <String>] [-Password <String>] [-State <PsApiManagementUserState>]
 [-Note <String>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmApiManagementUser** cmdlet sets user details.

## EXAMPLES

### Example 1: Change a user's password, email address and state
```
PS C:\> Set-AzureRmApiManagementUser -Context $APImContext -UserId "0123456789" -Email "patti.fuller@contoso.com" -Password "asdfgh" -State "Blocked"
```

This command sets a new user password and email address and blocks the user.

## PARAMETERS

### -Context
Specifies a **PsApiManagementContext** object.
This parameter is required.

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

### -UserId
Specifies the user ID.
This parameter is required.

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

### -FirstName
Specifies the first name of the user.
This parameter must be 1 to 100 characters long.

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

### -LastName
Specifies the last name of the user.
This parameter is must be 1 to 100 characters long.

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

### -Email
Specifies the email address of the user.
This parameter is optional.

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

### -Password
Specifies the user password.
This parameter is optional.

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

### -State
Specifies the user state.
This parameter is optional.
The default value is Active.

```yaml
Type: PsApiManagementUserState
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Note
Specifies a note about the user.
This parameter is optional.
The default value of this parameter is $null.

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

### Microsoft.Azure.Commands.ApiManagement.ServiceManagement.Models.PsApiManagementUser

## NOTES

## RELATED LINKS

[Get-AzureRmApiManagementUser](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Get-AzureRmApiManagementUser.md)

[New-AzureRmApiManagementUser](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/New-AzureRmApiManagementUser.md)

[Remove-AzureRmApiManagementUser](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Remove-AzureRmApiManagementUser.md)
