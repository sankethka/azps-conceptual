---
external help file: Microsoft.Azure.Commands.RedisCache.dll-Help.xml
ms.assetid: DA180A4A-88B6-4359-94E0-CF72F66D1FE4
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.RedisCache/v2.5.0/Get-AzureRmRedisCachePatchSchedule.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.RedisCache/v2.5.0/Get-AzureRmRedisCachePatchSchedule.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ResourceManager/AzureRM.RedisCache/v2.5.0/Get-AzureRmRedisCachePatchSchedule.md
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

# Get-AzureRmRedisCachePatchSchedule

## SYNOPSIS
Gets a patch schedule.

## SYNTAX

```
Get-AzureRmRedisCachePatchSchedule -ResourceGroupName <String> -Name <String> [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmRedisCachePatchSchedule** cmdlet gets a patch schedule for a cache in Azure Redis Cache.

## EXAMPLES

### Example 1: Get the patch schedule
```
PS C:\>Get-AzureRmRedisCachePatchSchedule -ResourceGroupName "ResourceGroup13" -Name "RedisCache06"
```

This command gets the patch schedule from the cache named RedisCache06.

## PARAMETERS

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

[New-AzureRmRedisCachePatchSchedule](xref:ResourceManager/AzureRM.RedisCache/v2.5.0/New-AzureRmRedisCachePatchSchedule.md)

[New-AzureRmRedisCacheScheduleEntry](xref:ResourceManager/AzureRM.RedisCache/v2.5.0/New-AzureRmRedisCacheScheduleEntry.md)

[Remove-AzureRmRedisCachePatchSchedule](xref:ResourceManager/AzureRM.RedisCache/v2.5.0/Remove-AzureRmRedisCachePatchSchedule.md)


