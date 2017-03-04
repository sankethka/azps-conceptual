---
external help file: Microsoft.Azure.Commands.ApiManagement.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: D157731A-38A0-4DFB-B48D-067650912102
updated_at: 1/11/2017 10:40 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Remove-AzureRmApiManagementLogger.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Remove-AzureRmApiManagementLogger.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/053af8004c353b7e798073894cdf70355549517b/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Remove-AzureRmApiManagementLogger.md
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

# Remove-AzureRmApiManagementLogger

## SYNOPSIS
Removes an API Management Logger.

## SYNTAX

```
Remove-AzureRmApiManagementLogger -Context <PsApiManagementContext> -LoggerId <String> [-PassThru] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureRmApiManagementLogger** cmdlet removes an Azure API Management **Logger**.

## EXAMPLES

### Example 1: Remove a logger
```
PS C:\> Remove-AzureRmApiManagementLogger -Context $ApimContext -LoggerId "Logger123" -Force
```

This command removes a logger that has the ID Logger123.

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

### -LoggerId
Specifies the ID of the logger to remove.

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

### -PassThru
Indicates that this cmdlet returns a value of $True if the operation succeeds or $False otherwise.

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

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Boolean

## NOTES

## RELATED LINKS

[Get-AzureRmApiManagementLogger](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Get-AzureRmApiManagementLogger.md)

[New-AzureRmApiManagementLogger](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/New-AzureRmApiManagementLogger.md)

[Set-AzureRmApiManagementLogger](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Set-AzureRmApiManagementLogger.md)
