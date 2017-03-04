---
external help file: Microsoft.Azure.Commands.ManagedCache.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 72EAB2AE-6EDD-4B38-ABF4-B3821D749162
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.ManagedCache/v1.6.1/Get-AzureManagedCacheAccessKey.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.ManagedCache/v1.6.1/Get-AzureManagedCacheAccessKey.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ServiceManagement/Azure.ManagedCache/v1.6.1/Get-AzureManagedCacheAccessKey.md
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

# Get-AzureManagedCacheAccessKey

## SYNOPSIS
Gets the access keys for an Azure Cache.

## SYNTAX

```
Get-AzureManagedCacheAccessKey [-Name] <String> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureManagedCacheAccessKey** cmdlet gets the primary and secondary access keys for an Azure Cache.
You can use these keys to allow clients, such as web applications, to access to your Azure Cache.
Typically, you use the primary key, but use the secondary key to avoid delays while the primary key is being regenerated.
To get new access keys, use the New-AzureManagedCacheAccessKey cmdlet.
An Azure Cache is a secure, dedicated cache that provides extremely fast access to data.
This distributed, in-memory, scalable solution enables you to build highly scalable and responsive applications.
For more information about Azure Cache, see Azure Cachehttp://azure.microsoft.com/en-us/services/cache/.

## EXAMPLES

### Example 1: Get the access key for an Azure Cache
```
PS C:\>Get-AzureManagedCacheAccessKey -Name "ContosoCache"
```

This command gets the access key for the Azure Cache named ContosoCache.

## PARAMETERS

### -Name
Specifies the name of the Azure Cache.
This parameter value is case-sensitive.
Wildcard characters are not permitted.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Profile
ps_azureprofile_description

```yaml
Type: AzureSMProfile
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

### Microsoft.Azure.Management.ManagedCache.Models.CachingKeysResponse

## NOTES

## RELATED LINKS

[New-AzureManagedCacheAccessKey](xref:ServiceManagement/Azure.ManagedCache/v1.6.1/New-AzureManagedCacheAccessKey.md)

[New-AzureManagedCache](xref:ServiceManagement/Azure.ManagedCache/v1.6.1/New-AzureManagedCache.md)

[Get-AzureManagedCache](xref:ServiceManagement/Azure.ManagedCache/v1.6.1/Get-AzureManagedCache.md)

[Set-AzureManagedCache](xref:ServiceManagement/Azure.ManagedCache/v1.6.1/Set-AzureManagedCache.md)

[Remove-AzureManagedCache](xref:ServiceManagement/Azure.ManagedCache/v1.6.1/Remove-AzureManagedCache.md)


