---
external help file: Microsoft.Azure.Commands.RedisCache.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: BFA7AC16-6CFF-4518-AB61-5A3442A33932
updated_at: 10/31/2016 9:17 PM
ms.date: 10/31/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.RedisCache/v1.1.10/Remove-AzureRmRedisCache.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.RedisCache/v1.1.10/Remove-AzureRmRedisCache.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/70d99f0e924efe152eb73454f7898f92d5a5db64/azureps-cmdlets-docs/ResourceManager/AzureRM.RedisCache/v1.1.10/Remove-AzureRmRedisCache.md
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

# Remove-AzureRmRedisCache

## SYNOPSIS
Removes a Redis Cache.

## SYNTAX

```
Remove-AzureRmRedisCache -ResourceGroupName <String> -Name <String> [-Force] [-PassThru] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureRmRedisCache** cmdlet removes an Azure Redis Cache.

## EXAMPLES

### Example 1: Remove a Redis Cache and return the result
```
PS C:\>Remove-AzureRmRedisCache -ResourceGroupName "ResourceGroup03" -Name "myCache" -Force -PassThru
True
```

This command removes a Redis Cache and displays whether the operation is successful.

### Example 2: Remove a Redis Cache and do not display the result
```
PS C:\>Remove-AzureRmRedisCache -ResourceGroupName "ResourceGroup03" -Name "myCache" -Force
```

This command removes a Redis Cache.
Because the *PassThru* parameter is not specified, the result of the operation is not displayed.

## PARAMETERS

### -Name
Specifies the name of the Redis Cache to remove.

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

### -ResourceGroupName
Specifies the name of the resource group that contains the Redis Cache to remove.

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

### -Force
ps_force

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
passthru

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
You can pipe input to this cmdlet by name, but not by value.

## OUTPUTS

### Boolean
Returns $True if no exception occurs.

## NOTES

## RELATED LINKS

[Get-AzureRmRedisCache](xref:ResourceManager/AzureRM.RedisCache/v1.1.10/Get-AzureRmRedisCache.md)

[New-AzureRmRedisCache](xref:ResourceManager/AzureRM.RedisCache/v1.1.10/New-AzureRmRedisCache.md)

[Set-AzureRmRedisCache](xref:ResourceManager/AzureRM.RedisCache/v1.1.10/Set-AzureRmRedisCache.md)


