---
external help file: Microsoft.Azure.Commands.RedisCache.dll-Help.xml
ms.assetid: A73D4DDD-387A-4468-AC6E-F15BF473527E
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.RedisCache/v2.5.0/Reset-AzureRmRedisCache.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.RedisCache/v2.5.0/Reset-AzureRmRedisCache.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ResourceManager/AzureRM.RedisCache/v2.5.0/Reset-AzureRmRedisCache.md
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

# Reset-AzureRmRedisCache

## SYNOPSIS
Restarts nodes of a cache.

## SYNTAX

```
Reset-AzureRmRedisCache -ResourceGroupName <String> -Name <String> -RebootType <String> [-ShardId <Int32>]
 [-Force] [-PassThru] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Reset-AzureRmRedisCache** cmdlet restarts nodes of an Azure Redis Cache instance.

## EXAMPLES

### Example 1: Restart both nodes
```
PS C:\>Reset-AzureRmRedisCache -ResourceGroupName "ResourceGroup13" -Name "RedisCache06" -RebootType "AllNodes" -Force
```

This command restarts both nodes for the cache named RedisCache06.

## PARAMETERS

### -Force
Forces the command to run without asking for user confirmation.

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

### -Name
Specifies the name of a cache.

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
Indicates that this cmdlet returns a Boolean that indicates whether the operation succeeds.
By default, this cmdlet does not generate any output.

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

### -RebootType
Specifies which node or nodes to restart.
The acceptable values for this parameter are:

- PrimaryNode 
- SecondaryNode 
- AllNodes

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
Specifies the name of the resource group that contains the cache.

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

### -ShardId
Specifies the ID of the shard that this cmdlet restarts for a premium cache with clustering enabled.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
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
You can pipe input to this cmdlet by property name, but not by value.

## OUTPUTS

### None

## NOTES
* Keywords: azure, azurerm, arm, resource, management, manager, redis, cache, web, webapp, website

## RELATED LINKS

[Export-AzureRmRedisCache](xref:ResourceManager/AzureRM.RedisCache/v2.5.0/Export-AzureRmRedisCache.md)

[Import-AzureRmRedisCache](xref:ResourceManager/AzureRM.RedisCache/v2.5.0/Import-AzureRmRedisCache.md)

[New-AzureRmRedisCache](xref:ResourceManager/AzureRM.RedisCache/v2.5.0/New-AzureRmRedisCache.md)

[Remove-AzureRmRedisCache](xref:ResourceManager/AzureRM.RedisCache/v2.5.0/Remove-AzureRmRedisCache.md)

[Set-AzureRmRedisCache](xref:ResourceManager/AzureRM.RedisCache/v2.5.0/Set-AzureRmRedisCache.md)


