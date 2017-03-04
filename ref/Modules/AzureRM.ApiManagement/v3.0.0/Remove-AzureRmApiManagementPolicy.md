---
external help file: Microsoft.Azure.Commands.ApiManagement.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: FA6F69C4-8A60-4397-9EB0-8DF2A8ED9824
updated_at: 1/11/2017 8:34 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Remove-AzureRmApiManagementPolicy.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Remove-AzureRmApiManagementPolicy.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/1e1f15e9dfe7a1d13d21733b3111880550e35887/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Remove-AzureRmApiManagementPolicy.md
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

# Remove-AzureRmApiManagementPolicy

## SYNOPSIS
Removes the API Management policy from a specified scope.

## SYNTAX

### Tenant level (Default)
```
Remove-AzureRmApiManagementPolicy -Context <PsApiManagementContext> [-PassThru] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### Product level
```
Remove-AzureRmApiManagementPolicy -Context <PsApiManagementContext> -ProductId <String> [-PassThru] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### API level
```
Remove-AzureRmApiManagementPolicy -Context <PsApiManagementContext> -ApiId <String> [-PassThru] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### Operation level
```
Remove-AzureRmApiManagementPolicy -Context <PsApiManagementContext> -ApiId <String> -OperationId <String>
 [-PassThru] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureRmApiManagementPolicy** cmdlet removes the API Management policy from specified scope.

## EXAMPLES

### Example 1: Remove the tenant level policy
```
PS C:\> Remove-AzureRmApiManagementPolicy -Context $APImContext
```

This command removes tenant level policy from API Management.

### Example 2: Remove the product-scope policy
```
PS C:\> Remove-AzureRmApiManagementPolicy -Context $APImContext -ProductId "0123456789"
```

This command removes product-scope policy from API Management.

### Example 3: Remove the API-scope policy
```
PS C:\> Remove-AzureRmApiManagementPolicy -Context $APImContext -ApiId "9876543210"
```

This command removes API-scope policy from API Management.

### Example 4: Remove the operation-scope policy
```
PS C:\> Remove-AzureRmApiManagementPolicy -Context $APImContext -ApiId "9876543210" -OperationId "777"
```

This command removes operation-scope policy from API Management.

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

### -PassThru
Indicates that this cmdlet returns a value of $True, if it succeeds, or a value of $False, otherwise.

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

### -ProductId
Specifies the identifier of the existing product.
If you specify this parameter, the cmdlet removes the product-scope policy.

```yaml
Type: String
Parameter Sets: Product level
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ApiId
Specifies the identifier of an existing API.
If you specify this parameter, the cmdlet removes the API-scope policy.

```yaml
Type: String
Parameter Sets: API level, Operation level
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -OperationId
Specifies the identifier of an existing operation.
If you specify this parameter with the *ApiId* parameter, this cmdlet removes the operation-scope policy.

```yaml
Type: String
Parameter Sets: Operation level
Aliases: 

Required: True
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

[Get-AzureRmApiManagementPolicy](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Get-AzureRmApiManagementPolicy.md)

[Set-AzureRmApiManagementPolicy](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Set-AzureRmApiManagementPolicy.md)


