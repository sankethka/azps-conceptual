---
external help file: Microsoft.Azure.Commands.ManagedCache.dll-Help.xml
ms.assetid: E70C5BFD-5794-4CDC-A173-8626C5D6E0CA
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.ManagedCache/v3.4.0/New-AzureManagedCacheAccessKey.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.ManagedCache/v3.4.0/New-AzureManagedCacheAccessKey.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ServiceManagement/Azure.ManagedCache/v3.4.0/New-AzureManagedCacheAccessKey.md
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

# New-AzureManagedCacheAccessKey

## SYNOPSIS
Creates access keys for an Azure Cache.

## SYNTAX

```
New-AzureManagedCacheAccessKey -Name <String> [-KeyType <String>] [-Profile <AzureSMProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureManagedCacheAccessKey** cmdlet creates primary or secondary access keys for an Azure Cache.
When you create an Azure Cache, it includes a set of access keys.
Use the Get-AzureManagedCacheAccessKey cmdlet to get the current access keys.
You can use these keys to allow clients, such as web applications, to access to your Azure Cache.
An Azure Cache is a secure, dedicated cache that provides extremely fast access to data.
This distributed, in-memory, scalable solution enables you to build highly scalable and responsive applications.
For more information about Azure Cache, see [Azure Cache](http://azure.microsoft.com/en-us/services/cache/) (http://azure.microsoft.com/en-us/services/cache/).

## EXAMPLES

### Example 1: Create a new primary key
```
PS C:\>New-AzureManagedCacheAccessKey -Name "ContosoCache"
```

This command creates a new primary key for the Azure Cache named ContosoCache.

### Example 2: Create a new secondary key
```
PS C:\>New-AzureManagedCacheAccessKey -Name "ContosoCache" -KeyType Secondary
```

This command creates a new secondary key for the Azure Cache named ContosoCache.

### Example 3: Create new access keys
```
PS C:\>'Primary', 'Secondary' | ForEach-Object {New-AzureManagedCacheAccessKey -Name "ContosoCache" -KeyType $_}
```

This command creates new primary and secondary keys for the Azure Cache named ContosoCache.

## PARAMETERS

### -KeyType
Specifies the type of key to create.
The default value is Primary.
You generally will use the primary key, but use the secondary key to avoid delays while the primary key is regenerated.
The acceptable values for this parameter are:

- Primary
- Secondary

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

### -Name
Specifies the name of Azure Cache access key to generate keys.
The parameter value is case-sensitive.
Wildcard characters are not permitted.

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

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

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

[Get-AzureManagedCacheAccessKey](xref:ServiceManagement/Azure.ManagedCache/v3.4.0/Get-AzureManagedCacheAccessKey.md)

[Get-AzureManagedCache](xref:ServiceManagement/Azure.ManagedCache/v3.4.0/Get-AzureManagedCache.md)

[New-AzureManagedCache](xref:ServiceManagement/Azure.ManagedCache/v3.4.0/New-AzureManagedCache.md)

[Remove-AzureManagedCache](xref:ServiceManagement/Azure.ManagedCache/v3.4.0/Remove-AzureManagedCache.md)

[Set-AzureManagedCache](xref:ServiceManagement/Azure.ManagedCache/v3.4.0/Set-AzureManagedCache.md)


