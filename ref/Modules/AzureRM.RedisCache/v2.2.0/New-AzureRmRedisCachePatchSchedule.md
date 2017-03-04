---
external help file: Microsoft.Azure.Commands.RedisCache.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 2A537291-E8C7-41F4-8846-7D90B8D08BBD
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.RedisCache/v2.2.0/New-AzureRmRedisCachePatchSchedule.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.RedisCache/v2.2.0/New-AzureRmRedisCachePatchSchedule.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.RedisCache/v2.2.0/New-AzureRmRedisCachePatchSchedule.md
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

# New-AzureRmRedisCachePatchSchedule

## SYNOPSIS
Adds a patch schedule.

## SYNTAX

```
New-AzureRmRedisCachePatchSchedule -ResourceGroupName <String> -Name <String> -Entries <PSScheduleEntry[]>
 [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmRedisCachePatchSchedule** cmdlet adds a patch schedule to a cache in Azure Redis Cache.

## EXAMPLES

### Example 1: Create and add a patch schedule on a cache
```
PS C:\>New-AzureRmRedisCachePatchSchedule -ResourceGroupName "ResourceGroup13" -Name "RedisCache06" -Entries @(New-AzureRmRedisCacheScheduleEntry -DayOfWeek "Weekend" -StartHourUtc 2 -MaintenanceWindow "06:00:00")
```

This command adds a patch schedule to the cache named RedisCache06.
The Entries parameter takes as its value a command that uses **New-AzureRmRedisCacheScheduleEntry** to create a schedule.

## PARAMETERS

### -Name
Specifies the name of the cache.

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
Specifies the name of the resource group which contains the cache.

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

### -Entries
Specifies an array of schedules that this cmdlet sets on a cache. 
To obtain a **PSScheduleEntry** object, use the New-AzureRmRedisCacheScheduleEntry cmdlet.

```yaml
Type: PSScheduleEntry[]
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
You can pipe input to this cmdlet by property name, but not by value.

## OUTPUTS

### Microsoft.Azure.Commands.RedisCache.Models.PSScheduleEntry
This cmdlet returns the of patch schedule entries set on the cache.

## NOTES
* Keywords: azure, azurerm, arm, resource, management, manager, redis, cache, web, webapp, website

## RELATED LINKS

[Get-AzureRmRedisCachePatchSchedule](xref:ResourceManager/AzureRM.RedisCache/v2.2.0/Get-AzureRmRedisCachePatchSchedule.md)

[New-AzureRmRedisCacheScheduleEntry](xref:ResourceManager/AzureRM.RedisCache/v2.2.0/New-AzureRmRedisCacheScheduleEntry.md)

[Remove-AzureRmRedisCachePatchSchedule](xref:ResourceManager/AzureRM.RedisCache/v2.2.0/Remove-AzureRmRedisCachePatchSchedule.md)


