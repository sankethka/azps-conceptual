---
external help file: Microsoft.Azure.Commands.ManagedCache.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 867D7567-9CAE-4247-AB4D-DC70BCF328A9
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.ManagedCache/v0.9.8/Get-AzureManagedCacheNamedCache.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.ManagedCache/v0.9.8/Get-AzureManagedCacheNamedCache.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.ManagedCache/v0.9.8/Get-AzureManagedCacheNamedCache.md
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

# Get-AzureManagedCacheNamedCache

## SYNOPSIS
Gets a specific named cache or all named caches in an Azure Managed Cache Service instance

## SYNTAX

```
Get-AzureManagedCacheNamedCache -Name <String> [-NamedCache <String>] [-Profile <AzureProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureManagedCacheNamedCache** cmdlet gets a specific named cache or all named caches in an Azure Managed Cache Service instance in your Azureaccount.

## EXAMPLES

### Example 1: Get the details of a specific named cache
```
PS C:\>Get-AzureManagedCacheNamedCache -Name contosocache -NamedCache "ContosoNamedCache"
```

This command gets details about the cache named ContosoNamedCache.

### Example 2: Get the details of all Named Caches in an Azure Managed Cache Service
```
PS C:\>Get-AzureManagedCacheNamedCache -Name "ContosoCache"
```

This command gets details about all Named Caches in the Azure Managed Cache Service instance named ContosoCache.

## PARAMETERS

### -Name
Specifies the name of the Azure Managed Cache Service instance that contains the named cache or caches to retrieve.

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

### -NamedCache
Specifies the name of the named cache when you retrieve a single named cache.
All named caches from the specified Azure Managed Cache Service instance will be returned if this parameter is not provided.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

```yaml
Type: AzureProfile
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### Microsoft.Azure.Commands.ManagedCache.Models.PSCacheServiceWithNamedCaches

## NOTES
* Use Add-AzureAccount or Import-AzurePublishSettingsFile to make your azure account available to Windows PowerShell before using this cmdlet. For more information, see How to install and configure Azure PowerShellhttp://azure.microsoft.com/en-us/documentation/articles/install-configure-powershell/.

## RELATED LINKS

[New-AzureManagedCacheNamedCache](xref:ServiceManagement/Azure.ManagedCache/v0.9.8/New-AzureManagedCacheNamedCache.md)

[Remove-AzureManagedCacheNamedCache](xref:ServiceManagement/Azure.ManagedCache/v0.9.8/Remove-AzureManagedCacheNamedCache.md)

[Set-AzureManagedCacheNamedCache](xref:ServiceManagement/Azure.ManagedCache/v0.9.8/Set-AzureManagedCacheNamedCache.md)


