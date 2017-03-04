---
external help file: Microsoft.Azure.Commands.ManagedCache.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 0EE3CF16-D6FC-4372-8FAB-F21D1F9BFBFF
updated_at: 10/24/2016 11:55 PM
ms.date: 10/24/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.ManagedCache/v0.9.8/Get-AzureManagedCache.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.ManagedCache/v0.9.8/Get-AzureManagedCache.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/4377291ee360e58e2c1c5d644155daf6a0279055/azureps-cmdlets-docs/ServiceManagement/Azure.ManagedCache/v0.9.8/Get-AzureManagedCache.md
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

# Get-AzureManagedCache

## SYNOPSIS
Gets the Azure Caches in your Azure account.

## SYNTAX

```
Get-AzureManagedCache [[-Name] <String>] [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureManagedCache** cmdlet get the Azure Caches in your account.
By default, it gets all Azure Caches in the account.
To get a particular Azure Cache, use the *Name* parameter.
An Azure Cache is a secure, dedicated cache that provides extremely fast access to data.
This distributed, in-memory, scalable solution enables you to build highly scalable and responsive applications.
For more information about Azure Cache, see Azure Cachehttp://azure.microsoft.com/en-us/services/cache/.

## EXAMPLES

### Example 1: Get all Azure Caches
```
PS C:\>Get-AzureManagedCache
```

This command gets all Azure Caches in your account.

### Example 2: Get an Azure Cache by name
```
PS C:\>Get-AzureManagedCache -Name "ContosoCache"
```

This command gets the Azure Cache named ContosoCache.

## PARAMETERS

### -Name
Specifies the Azure cache.
You need to supply the name of an Azure Cache.
This parameter is case-sensitive.
This parameter is optional.
By default, **Get-AzureManagedCache** gets all Azure caches in the account.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
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

### Microsoft.Azure.Commands.ManagedCache.Models.PSCacheService

## NOTES
* Before you use this cmdlet, call Add-AzureAccount or Import-AzurePublishSettingsFile to make your Azure account available to Windows PowerShell. For more information, see How to install and configure Azure PowerShellhttp://azure.microsoft.com/en-us/documentation/articles/install-configure-powershell/

## RELATED LINKS

[New-AzureManagedCache](xref:ServiceManagement/Azure.ManagedCache/v0.9.8/New-AzureManagedCache.md)

[Set-AzureManagedCache](xref:ServiceManagement/Azure.ManagedCache/v0.9.8/Set-AzureManagedCache.md)

[Remove-AzureManagedCache](xref:ServiceManagement/Azure.ManagedCache/v0.9.8/Remove-AzureManagedCache.md)

[Get-AzureManagedCacheAccessKey](xref:ServiceManagement/Azure.ManagedCache/v0.9.8/Get-AzureManagedCacheAccessKey.md)

[New-AzureManagedCacheAccessKey](xref:ServiceManagement/Azure.ManagedCache/v0.9.8/New-AzureManagedCacheAccessKey.md)


